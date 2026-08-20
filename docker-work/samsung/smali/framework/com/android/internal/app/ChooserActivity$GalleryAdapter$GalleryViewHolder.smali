.class public Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field blacklist btnHolder:Landroid/widget/LinearLayout;

.field blacklist checkBox:Landroid/widget/CheckBox;

.field blacklist cropIcon:Landroid/widget/ImageView;

.field blacklist cropIconLayout:Landroid/widget/LinearLayout;

.field blacklist favoriteImage:Landroid/widget/ImageView;

.field blacklist image:Landroid/widget/ImageView;

.field blacklist imageContainer:Landroid/widget/FrameLayout;

.field blacklist optimizerBtn:Landroid/widget/ImageButton;

.field blacklist optimizerLayout:Landroid/widget/RelativeLayout;

.field blacklist parentView:Landroid/view/View;

.field blacklist progressBar:Landroid/widget/ProgressBar;

.field blacklist remasterIcon:Landroid/widget/ImageView;

.field blacklist remasterIconLayout:Landroid/widget/LinearLayout;

.field blacklist rotateIcon:Landroid/widget/ImageView;

.field blacklist rotateIconLayout:Landroid/widget/LinearLayout;

.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

.field blacklist tiltIcon:Landroid/widget/ImageView;

.field blacklist tiltIconLayout:Landroid/widget/LinearLayout;

.field blacklist typeImage:Landroid/widget/ImageView;

.field blacklist typeImageBackground:Landroid/widget/LinearLayout;

.field blacklist typeImageText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateEnhancementButtonVisibility(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;[Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateEnhancementButtonVisibility([Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 14798
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    .line 14799
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14800
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    .line 14801
    const v0, 0x1020550

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    .line 14802
    const v0, 0x102055d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 14803
    const v0, 0x102054a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    .line 14804
    const v0, 0x102054c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    .line 14805
    const v0, 0x102054e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    .line 14806
    const v0, 0x102054d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    .line 14807
    const v0, 0x1020566

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 14808
    const v0, 0x102055e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    .line 14809
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 14810
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 14811
    const v0, 0x102055f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    .line 14812
    const v0, 0x1020541

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    .line 14813
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14814
    const v0, 0x102057b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    .line 14815
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14816
    const v0, 0x102056b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    .line 14817
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14818
    const v0, 0x102056c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    .line 14819
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14820
    const v0, 0x1020545

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    .line 14821
    const v0, 0x1020293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    .line 14822
    const v0, 0x10204d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    .line 14823
    const v0, 0x1020637

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    .line 14824
    const v0, 0x1020500

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    .line 14826
    const v0, 0x1020556

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 14828
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14835
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14889
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$3;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14916
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14983
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14991
    return-void
.end method

.method private blacklist updateEnhancementButtonVisibility([Z)V
    .registers 7
    .param p1, "state"    # [Z

    .line 15001
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aget-boolean v2, p1, v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_d

    :cond_c
    move v2, v4

    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15002
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15003
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    aget-boolean v2, p1, v3

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15004
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15005
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    aget-boolean v2, p1, v2

    if-eqz v2, :cond_37

    move v2, v3

    goto :goto_38

    :cond_37
    move v2, v4

    :goto_38
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15006
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15007
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    aget-boolean v2, p1, v2

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v4

    :goto_4d
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15008
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15009
    return-void
.end method


# virtual methods
.method public blacklist updateSelectedEnhancements([Z)V
    .registers 4
    .param p1, "state"    # [Z

    .line 14994
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14995
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14996
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14997
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14998
    return-void
.end method
