.class Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

.field final synthetic blacklist val$this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V
    .registers 3
    .param p1, "this$2"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14916
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->val$this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .line 14919
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3e1

    .line 14920
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsOnlyOneCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 14921
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14922
    return-void

    .line 14925
    :cond_24
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semNeedToastToWarnLocationDisable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 14926
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14927
    return-void

    .line 14930
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14931
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1dd

    .line 14932
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGallerySliceUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/internal/app/ChooserActivity;->semUriToList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14933
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isSlowMotion:Z

    if-nez v0, :cond_f9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isHdr10plus:Z

    if-nez v0, :cond_f9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14934
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isP3:Z

    if-eqz v0, :cond_133

    .line 14935
    :cond_f9
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14936
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->semUpdateTransodeSetting()V

    .line 14938
    :cond_133
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->needVideoConverting:Z

    if-eqz v0, :cond_168

    .line 14939
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14940
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->semUpdateTransodeSetting()V

    .line 14942
    :cond_168
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v0

    .line 14943
    .local v0, "currPosition":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    if-ne v0, v3, :cond_1b8

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v3

    .line 14944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b8

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v3

    .line 14945
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget-boolean v3, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    if-eqz v3, :cond_1b8

    .line 14946
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsPrivateShareEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14947
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcheckAndEnablePrivateShare(Lcom/android/internal/app/ChooserActivity;)V

    .line 14949
    :cond_1b8
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmThumbDimension(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/share/SemShareConstants;->DMA_SURVEY_FEATURE_THUMBNAIL_ACTION_TYPES:[Ljava/lang/String;

    aget-object v1, v4, v1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPreviewChekcedCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmPreviewChekcedCount(Lcom/android/internal/app/ChooserActivity;I)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14950
    .end local v0    # "currPosition":I
    goto/16 :goto_3ab

    .line 14951
    :cond_1dd
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    if-eqz v0, :cond_2a8

    .line 14952
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 14953
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    .line 14954
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    .line 14955
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    const/16 v3, 0xa30

    if-ne v0, v3, :cond_2a8

    .line 14956
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10808c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14957
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10602de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 14958
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemDeleteMotionFile(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;)V

    .line 14961
    :cond_2a8
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14962
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isSlowMotion:Z

    if-nez v0, :cond_317

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isHdr10plus:Z

    if-nez v0, :cond_317

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14963
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isP3:Z

    if-eqz v0, :cond_347

    .line 14964
    :cond_317
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14965
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->semUpdateTransodeSetting()V

    .line 14967
    :cond_347
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->needVideoConverting:Z

    if-eqz v0, :cond_388

    .line 14968
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v0

    if-lez v0, :cond_37f

    .line 14969
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14971
    :cond_37f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->semUpdateTransodeSetting()V

    .line 14973
    :cond_388
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmThumbDimension(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/share/SemShareConstants;->DMA_SURVEY_FEATURE_THUMBNAIL_ACTION_TYPES:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPreviewUnChekcedCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmPreviewUnChekcedCount(Lcom/android/internal/app/ChooserActivity;I)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14975
    :goto_3ab
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->location:Ljava/lang/CharSequence;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    .line 14976
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->semUpdateLocationText()V

    .line 14978
    :cond_3d8
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semCreateUriList(Z)V

    .line 14980
    :cond_3e1
    return-void
.end method
