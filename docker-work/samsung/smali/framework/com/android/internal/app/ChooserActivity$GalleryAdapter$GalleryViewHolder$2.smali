.class Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;
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

    .line 14835
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->val$this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .line 14838
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    const/16 v1, 0xa30

    const/4 v2, 0x1

    if-nez v0, :cond_23d

    .line 14839
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupImage()I

    move-result v0

    if-gtz v0, :cond_5f

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14840
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    if-ne v0, v1, :cond_370

    .line 14841
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    .line 14842
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupImage()I

    move-result v0

    if-eq v0, v2, :cond_bc

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14843
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupImage()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_eb

    :cond_bc
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14844
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v0, :cond_eb

    .line 14845
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->semGetBurstSingleShot(I)V

    goto/16 :goto_185

    .line 14846
    :cond_eb
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupImage()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14847
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v0, :cond_13a

    .line 14848
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->semGetSimilarShot(I)V

    goto :goto_185

    .line 14849
    :cond_13a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    if-ne v0, v1, :cond_185

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14850
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v0, :cond_185

    .line 14851
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity;->semGetMotionPhotoUri(I)V

    .line 14853
    :cond_185
    :goto_185
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14854
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    if-eqz v0, :cond_19d

    .line 14855
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->semSetChecked(Z)V

    .line 14857
    :cond_19d
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    if-ne v0, v1, :cond_1ec

    .line 14858
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10808c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14859
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10602dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_204

    .line 14861
    :cond_1ec
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10602e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 14863
    :goto_204
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    .line 14864
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14865
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semCreateUriList(Z)V

    goto/16 :goto_370

    .line 14868
    :cond_23d
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    .line 14869
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    if-ne v0, v1, :cond_305

    .line 14870
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10808c8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14871
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10602de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 14872
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemDeleteMotionFile(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;)V

    .line 14873
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGallerySliceUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity;->semUriToList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_354

    .line 14875
    :cond_305
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14876
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    if-eqz v0, :cond_31d

    .line 14877
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->semSetChecked(Z)V

    .line 14879
    :cond_31d
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 14880
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14881
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14883
    :goto_354
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    .line 14884
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;->this$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->semCreateUriList(Z)V

    .line 14886
    :cond_370
    :goto_370
    return-void
.end method
