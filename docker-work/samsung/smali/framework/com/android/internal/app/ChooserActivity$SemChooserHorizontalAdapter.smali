.class public abstract Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SemChooserHorizontalAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field final blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field blacklist mRecyclerViewParent:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11469
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11470
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 11471
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11472
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 11474
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11487
    return-void
.end method


# virtual methods
.method public blacklist getItemCount()I
    .registers 2

    .line 11501
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 11505
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method abstract blacklist getListPosition(I)I
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11491
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->mRecyclerViewParent:Landroid/view/View;

    .line 11492
    return-void
.end method

.method public blacklist onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->mRecyclerViewParent:Landroid/view/View;

    .line 11497
    return-void
.end method
