.class Landroid/widget/SemHorizontalAbsListView$4;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .line 7601
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 7604
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2e

    .line 7605
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v1, v0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    .line 7606
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # invokes: Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->access$1300(Landroid/widget/SemHorizontalAbsListView;Z)V

    .line 7607
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # getter for: Landroid/widget/SemHorizontalAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->access$1400(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_21

    .line 7608
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    # invokes: Landroid/widget/SemHorizontalAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->access$1500(Landroid/widget/SemHorizontalAbsListView;Z)V

    .line 7610
    :cond_21
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 7611
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$4;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    .line 7614
    :cond_2e
    return-void
.end method
