.class final Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemMoreButtonViewHolder"
.end annotation


# instance fields
.field blacklist icon:Landroid/widget/ImageView;

.field blacklist text:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;

    .line 11527
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11528
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11530
    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;->icon:Landroid/widget/ImageView;

    .line 11532
    iget-boolean v1, p1, Lcom/android/internal/app/ChooserActivity;->mIsNight:Z

    if-eqz v1, :cond_18

    const v1, 0x10808c1

    goto :goto_1b

    :cond_18
    const v1, 0x10808c0

    :goto_1b
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11533
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11542
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;->text:Landroid/widget/TextView;

    .line 11543
    const v1, 0x1040c61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11544
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-android-internal-app-ChooserActivity$SemMoreButtonViewHolder(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 11534
    new-instance v0, Lcom/samsung/android/share/SemShareMoreAppsFragment;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SemShareMoreAppsFragment;-><init>(Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11535
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemMoreButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 11536
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 11537
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const v3, 0x102054b

    const-string/jumbo v4, "selectAppFragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 11538
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 11539
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 11540
    return-void
.end method
