.class Lcom/android/internal/app/ChooserActivity$31;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->initGalleryRecyclerView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 12911
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$31;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFoldStateChanged(Z)V
    .registers 2
    .param p1, "isFolded"    # Z

    .line 12914
    return-void
.end method

.method public whitelist onTableModeChanged(Z)V
    .registers 3
    .param p1, "isTableMode"    # Z

    .line 12918
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$31;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedApplyMultiSelectUI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$31;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryRecyclerView(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$31;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryRecyclerView(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 12919
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 12920
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$31;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTopMarginForMultiSelect(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 12922
    :cond_21
    return-void
.end method
