.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    .line 895
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 898
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const-string v7, "alpha"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    sparse-switch v2, :sswitch_data_1ee

    goto/16 :goto_1ed

    .line 948
    :sswitch_15
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_1ed

    .line 950
    :cond_21
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 951
    .local v2, "semTask":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    const/4 v12, 0x0

    .line 952
    .local v12, "mainPreviewTitleView":Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 953
    .local v13, "subPreviewTitleView":Landroid/widget/TextView;
    iget v14, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5d

    .line 954
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v14

    iget v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitleId:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 955
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    if-eqz v3, :cond_5a

    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5a

    .line 956
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mMainPreviewTitle:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050376

    invoke-virtual {v3, v12, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_5d

    .line 960
    :cond_5a
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 963
    :cond_5d
    :goto_5d
    iget v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    if-eq v3, v15, :cond_97

    .line 964
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitleId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 965
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    if-eqz v3, :cond_94

    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_94

    .line 966
    if-eqz v12, :cond_81

    .line 967
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 969
    :cond_81
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v3, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mSubPreviewTitle:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050379

    invoke-virtual {v3, v13, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_97

    .line 973
    :cond_94
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    :cond_97
    :goto_97
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;

    .line 979
    .local v3, "semImageView":Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V

    .line 980
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    .line 981
    invoke-virtual {v3, v8}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setAlpha(F)V

    .line 983
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_13a

    .line 984
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaskBitmap(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setMaskImage(Landroid/graphics/Bitmap;)V

    .line 985
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 986
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x66

    if-eq v4, v8, :cond_127

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x5c

    if-ne v4, v8, :cond_d1

    goto :goto_127

    .line 988
    :cond_d1
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x34

    if-ne v4, v8, :cond_ea

    .line 989
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808bc

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14d

    .line 990
    :cond_ea
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x3e

    if-ne v4, v8, :cond_103

    .line 991
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808b6

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14d

    .line 992
    :cond_103
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x48

    if-eq v4, v8, :cond_114

    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v8, 0x52

    if-ne v4, v8, :cond_110

    goto :goto_114

    .line 995
    :cond_110
    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    goto :goto_14d

    .line 993
    :cond_114
    :goto_114
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808ba

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14d

    .line 987
    :cond_127
    :goto_127
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x10808b3

    invoke-static {v4, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14d

    .line 998
    :cond_13a
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaskBitmap(Lcom/android/internal/app/ChooserActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setMaskImage(Landroid/graphics/Bitmap;)V

    .line 999
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1000
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;->setVisibility(I)V

    .line 1003
    :goto_14d
    new-array v4, v6, [F

    fill-array-data v4, :array_210

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1005
    .local v4, "semFadeAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1006
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1007
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1ed

    .line 905
    .end local v2    # "semTask":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v3    # "semImageView":Lcom/android/internal/app/ChooserActivity$SemPreviewIconView;
    .end local v4    # "semFadeAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "mainPreviewTitleView":Landroid/widget/TextView;
    .end local v13    # "subPreviewTitleView":Landroid/widget/TextView;
    :sswitch_168
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 906
    goto/16 :goto_1ed

    .line 910
    :sswitch_16f
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_17a

    goto :goto_1ed

    .line 912
    :cond_17a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    .line 913
    .local v2, "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 915
    .local v3, "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1b5

    .line 916
    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 917
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v4, :cond_1b4

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifCheckBox(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    if-eqz v4, :cond_1b4

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifCheckBox(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1b4

    .line 918
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    .line 920
    :cond_1b4
    return-void

    .line 923
    :cond_1b5
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V

    .line 924
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    .line 925
    invoke-virtual {v3, v8}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setAlpha(F)V

    .line 926
    iget-object v4, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 928
    new-array v4, v6, [F

    fill-array-data v4, :array_218

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 930
    .local v4, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 931
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 932
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 934
    iget v5, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v5, :cond_1e7

    .line 935
    iget v5, v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    .line 938
    :cond_1e7
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v5, v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->-$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    .line 939
    nop

    .line 1011
    .end local v2    # "task":Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    .end local v3    # "imageView":Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
    .end local v4    # "fadeAnim":Landroid/animation/ValueAnimator;
    :goto_1ed
    return-void

    :sswitch_data_1ee
    .sparse-switch
        0x2 -> :sswitch_16f
        0x29 -> :sswitch_168
        0x34 -> :sswitch_15
        0x3e -> :sswitch_15
        0x48 -> :sswitch_15
        0x52 -> :sswitch_15
        0x5c -> :sswitch_15
        0x66 -> :sswitch_15
    .end sparse-switch

    :array_210
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_218
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
