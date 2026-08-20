.class public Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist resolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 14280
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 14278
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->resolver:Landroid/content/ContentResolver;

    .line 14281
    new-instance v0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/os/Handler;Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p1, Lcom/android/internal/app/ChooserActivity;->mGalleryObserver:Landroid/database/ContentObserver;

    .line 14290
    return-void
.end method

.method private blacklist handleEnhancementBtnClicked(IILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V
    .registers 30
    .param p1, "type"    # I
    .param p2, "position"    # I
    .param p3, "galleryViewHolder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14586
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14587
    .local v11, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    if-nez v11, :cond_1c

    .line 14588
    return-void

    .line 14590
    :cond_1c
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsEnhancedImageProcessing(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_545

    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsEnhanceButtonAnimRunning(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto/16 :goto_545

    .line 14593
    :cond_2e
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 14594
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    .line 14596
    :cond_40
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v12, 0x1

    invoke-static {v0, v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14597
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14598
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedSmartShareTip(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 14599
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "chooser_smartshare_tip"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14600
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedSmartShareTip(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14602
    :cond_6b
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 14603
    .local v13, "curItemView":Landroid/view/View;
    const-string v14, "GalleryShareSheet"

    if-nez v13, :cond_90

    .line 14604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch itemview at current position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14605
    return-void

    .line 14607
    :cond_90
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    iget-object v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v2, v2, v8

    xor-int/2addr v2, v12

    aput-boolean v2, v0, v8

    .line 14609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v15, v0

    .line 14610
    .local v15, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/samsung/android/share/SemShareConstants;->DMA_SURVEY_FEATURE_SMART_SHARE_EFFECTS:[Ljava/lang/String;

    aget-object v0, v0, v8

    const-string v2, "Effect"

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14612
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    iget-object v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_b5

    .line 14613
    const-string v2, "SS_TGON"

    goto :goto_b7

    .line 14614
    :cond_b5
    const-string v2, "SS_TGOF"

    .line 14612
    :goto_b7
    invoke-virtual {v0, v2, v15}, Lcom/samsung/android/share/SemShareLogging;->insertLogWithDimension(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 14615
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v0, v0, v8

    if-eqz v0, :cond_c9

    .line 14616
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->viewedEnhancementCount:[I

    aget v2, v0, v8

    add-int/2addr v2, v12

    aput v2, v0, v8

    .line 14618
    :cond_c9
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-virtual {v10, v0}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    .line 14619
    const/4 v0, 0x0

    .line 14620
    .local v0, "enabledCount":I
    const/4 v2, 0x0

    move v6, v0

    .end local v0    # "enabledCount":I
    .local v2, "i":I
    .local v6, "enabledCount":I
    :goto_d1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_df

    .line 14621
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_dc

    add-int/lit8 v6, v6, 0x1

    .line 14620
    :cond_dc
    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 14624
    .end local v2    # "i":I
    :cond_df
    if-nez v6, :cond_493

    .line 14626
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSrcToEnhanceImageUris(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14627
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14628
    const/4 v2, 0x0

    .line 14629
    .local v2, "skippedAnimation":Z
    if-ne v8, v12, :cond_3c6

    .line 14630
    iget-object v5, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 14631
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 14632
    const/16 v16, 0x0

    .line 14633
    .local v16, "heightOffset":I
    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableWidth:I

    .line 14634
    .local v12, "currImgWidth":I
    iget-object v4, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v4, v11, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetViewWidthForCurrentOrientation(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;Landroid/widget/ImageView;)I

    move-result v0

    .line 14635
    .local v0, "viewWidth":I
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableHeight:I

    int-to-float v1, v1

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v1, v1, v19

    div-float/2addr v4, v1

    iput v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    .line 14636
    int-to-float v1, v12

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 14637
    .local v1, "viewTotalWidth":I
    int-to-float v4, v1

    int-to-float v3, v0

    mul-float v3, v3, v19

    div-float/2addr v4, v3

    iput v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    .line 14638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.scaleTypeRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info.heightscalefactor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " viewTotalWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14639
    iget-object v3, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->semIsDeviceInLandscape()Z

    move-result v3

    const-string v4, " matrixScaleFactor: "

    move/from16 v21, v2

    .end local v2    # "skippedAnimation":Z
    .local v21, "skippedAnimation":Z
    const-string v2, " height: "

    move/from16 v22, v12

    .end local v12    # "currImgWidth":I
    .local v22, "currImgWidth":I
    const/16 v12, 0x9

    if-eqz v3, :cond_245

    .line 14640
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    if-nez v3, :cond_234

    .line 14641
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    if-eqz v3, :cond_22c

    .line 14642
    new-array v3, v12, [F

    .line 14643
    .local v3, "f":[F
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14644
    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    if-nez v12, :cond_195

    .line 14645
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v23, v15

    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v23, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    div-float/2addr v12, v15

    float-to-int v12, v12

    .line 14646
    .local v12, "viewScaledHeight":I
    iget-object v15, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getHeight()I

    move-result v15

    sub-int/2addr v15, v12

    const/16 v20, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    goto :goto_197

    .line 14644
    .end local v12    # "viewScaledHeight":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_195
    move-object/from16 v23, v15

    .line 14648
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_197
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iput-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    .line 14649
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v19

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightPortrait:I

    int-to-float v15, v15

    div-float/2addr v12, v15

    .line 14650
    .local v12, "matrixScaleFactor":F
    iget-object v15, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v15

    const/16 v19, 0x5

    if-le v1, v15, :cond_1d1

    .line 14651
    iget-object v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    move/from16 v24, v6

    const/16 v18, 0x0

    .end local v6    # "enabledCount":I
    .local v24, "enabledCount":I
    aget v6, v3, v18

    move-object/from16 v25, v13

    const/16 v17, 0x4

    .end local v13    # "curItemView":Landroid/view/View;
    .local v25, "curItemView":Landroid/view/View;
    aget v13, v3, v17

    invoke-virtual {v15, v6, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14652
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    aget v13, v3, v19

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1ef

    .line 14654
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    :cond_1d1
    move/from16 v24, v6

    move-object/from16 v25, v13

    const/16 v18, 0x0

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    aget v13, v3, v18

    mul-float/2addr v13, v12

    const/4 v15, 0x4

    aget v15, v3, v15

    mul-float/2addr v15, v12

    invoke-virtual {v6, v13, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14655
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    mul-float/2addr v15, v12

    aget v13, v3, v19

    mul-float/2addr v13, v12

    invoke-virtual {v6, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14657
    :goto_1ef
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Reverse potrait backup Matrix: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " info.heightOffsetLandscape: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14658
    .end local v3    # "f":[F
    .end local v12    # "matrixScaleFactor":F
    goto :goto_23a

    .line 14659
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_22c
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    const/4 v2, 0x1

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    goto :goto_23c

    .line 14640
    .end local v2    # "skippedAnimation":Z
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "skippedAnimation":Z
    :cond_234
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .line 14662
    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    :goto_23a
    move/from16 v2, v21

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    :goto_23c
    iget v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetLandscape:I

    .line 14663
    .end local v16    # "heightOffset":I
    .local v3, "heightOffset":I
    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/16 :goto_315

    .line 14665
    .end local v2    # "skippedAnimation":Z
    .end local v3    # "heightOffset":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "heightOffset":I
    .restart local v21    # "skippedAnimation":Z
    :cond_245
    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    if-nez v3, :cond_30c

    .line 14666
    iget-object v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    if-eqz v3, :cond_30a

    .line 14667
    new-array v3, v12, [F

    .line 14668
    .local v3, "f":[F
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixLand:Landroid/graphics/Matrix;

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14669
    iget v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    if-nez v6, :cond_274

    .line 14670
    iget-object v6, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    div-float/2addr v6, v12

    float-to-int v6, v6

    .line 14671
    .local v6, "viewScaledHeight":I
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    sub-int/2addr v12, v6

    const/4 v13, 0x2

    div-int/2addr v12, v13

    iput v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    .line 14673
    .end local v6    # "viewScaledHeight":I
    :cond_274
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    .line 14674
    iget-object v6, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v19

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightLand:I

    int-to-float v12, v12

    div-float/2addr v6, v12

    .line 14675
    .local v6, "matrixScaleFactor":F
    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v12

    if-le v1, v12, :cond_2a7

    .line 14676
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    aget v15, v3, v13

    const/4 v13, 0x4

    aget v13, v3, v13

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14677
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    int-to-float v13, v13

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2c1

    .line 14679
    :cond_2a7
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x0

    aget v15, v3, v13

    mul-float/2addr v15, v6

    const/4 v13, 0x4

    aget v13, v3, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 14680
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    const/4 v13, 0x2

    aget v15, v3, v13

    mul-float/2addr v15, v6

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v12, v15, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14682
    :goto_2c1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reverse land backup Matrix: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " info.heightOffsetPortrait: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v12, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " info.viewHeightLand: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightLand:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14683
    .end local v3    # "f":[F
    .end local v6    # "matrixScaleFactor":F
    goto :goto_30c

    .line 14684
    :cond_30a
    const/4 v2, 0x1

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    goto :goto_30e

    .line 14687
    .end local v2    # "skippedAnimation":Z
    .restart local v21    # "skippedAnimation":Z
    :cond_30c
    :goto_30c
    move/from16 v2, v21

    .end local v21    # "skippedAnimation":Z
    .restart local v2    # "skippedAnimation":Z
    :goto_30e
    iget v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightOffsetPortrait:I

    .line 14688
    .end local v16    # "heightOffset":I
    .local v3, "heightOffset":I
    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->matrixPort:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14690
    :goto_315
    if-nez v2, :cond_3bd

    .line 14691
    iget-object v4, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14692
    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scale:F

    .line 14693
    .local v4, "scaleFactor":F
    iget-object v6, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->cropPos:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v6, v12

    mul-float/2addr v6, v4

    .line 14694
    .local v6, "dx":F
    iget-object v12, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->cropPos:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightscalefactor:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v4

    .line 14696
    .local v12, "dy":F
    int-to-float v13, v0

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v13, v15

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v13, v15

    iget v15, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->widthRatio:F

    div-float/2addr v13, v15

    float-to-int v13, v13

    .line 14697
    .local v13, "updatedWidth":I
    const/4 v15, 0x0

    .line 14698
    .local v15, "widthOffset":F
    move/from16 v16, v0

    .end local v0    # "viewWidth":I
    .local v16, "viewWidth":I
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    if-le v13, v0, :cond_355

    .line 14699
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v0

    sub-int v0, v13, v0

    int-to-float v0, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v15, v0, v17

    .line 14702
    :cond_355
    iget v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    move/from16 v17, v1

    .end local v1    # "viewTotalWidth":I
    .local v17, "viewTotalWidth":I
    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v0, v1

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    move/from16 v19, v2

    .end local v2    # "skippedAnimation":Z
    .local v19, "skippedAnimation":Z
    iget v2, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 14703
    iget v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v0, v6

    neg-float v0, v0

    sub-float/2addr v0, v15

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v12

    neg-float v1, v1

    int-to-float v2, v3

    move/from16 v21, v4

    .end local v4    # "scaleFactor":F
    .local v21, "scaleFactor":F
    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v2, v4

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " crop reapply cropHeightRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " translate x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v6

    add-float/2addr v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " translate y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v1, v12

    int-to-float v2, v3

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scaleTypeRatio:F

    mul-float/2addr v2, v4

    iget v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->heightRatio:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14710
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_3c3

    .line 14690
    .end local v6    # "dx":F
    .end local v12    # "dy":F
    .end local v13    # "updatedWidth":I
    .end local v15    # "widthOffset":F
    .end local v16    # "viewWidth":I
    .end local v17    # "viewTotalWidth":I
    .end local v19    # "skippedAnimation":Z
    .end local v21    # "scaleFactor":F
    .restart local v0    # "viewWidth":I
    .restart local v1    # "viewTotalWidth":I
    .restart local v2    # "skippedAnimation":Z
    :cond_3bd
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, v2

    .line 14713
    .end local v0    # "viewWidth":I
    .end local v1    # "viewTotalWidth":I
    .end local v2    # "skippedAnimation":Z
    .end local v3    # "heightOffset":I
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v22    # "currImgWidth":I
    .restart local v19    # "skippedAnimation":Z
    :goto_3c3
    move/from16 v2, v19

    goto :goto_3ce

    .line 14629
    .end local v19    # "skippedAnimation":Z
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .end local v25    # "curItemView":Landroid/view/View;
    .restart local v2    # "skippedAnimation":Z
    .local v6, "enabledCount":I
    .local v13, "curItemView":Landroid/view/View;
    .local v15, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3c6
    move/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v13

    move-object/from16 v23, v15

    .line 14713
    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    .restart local v25    # "curItemView":Landroid/view/View;
    :goto_3ce
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v0, :cond_3e4

    .line 14714
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v0, v1, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    goto :goto_3e9

    .line 14716
    :cond_3e4
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mconvertGalleryInfo(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14718
    :goto_3e9
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    .line 14719
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    const/4 v3, 0x3

    if-eq v8, v3, :cond_418

    if-nez v1, :cond_418

    .line 14720
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v4, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_41f

    .line 14721
    :cond_418
    if-eq v8, v3, :cond_41f

    .line 14722
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14724
    :cond_41f
    :goto_41f
    const/4 v4, 0x0

    .line 14726
    .local v4, "originalBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_457

    .line 14727
    :try_start_422
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    .line 14728
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;
    :try_end_43a
    .catch Ljava/lang/IllegalStateException; {:try_start_422 .. :try_end_43a} :catch_43b

    goto :goto_457

    .line 14730
    :catch_43b
    move-exception v0

    .line 14731
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not fetch bitmap from icon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_458

    .line 14732
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_457
    :goto_457
    nop

    .line 14733
    :goto_458
    const/4 v5, 0x1

    if-ne v8, v5, :cond_465

    if-nez v2, :cond_465

    .line 14734
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_480

    .line 14735
    :cond_465
    if-ne v8, v3, :cond_46f

    .line 14736
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_480

    .line 14737
    :cond_46f
    const/4 v3, 0x2

    if-ne v8, v3, :cond_47a

    .line 14738
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-static {v0, v3, v9, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyReverseTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_480

    .line 14740
    :cond_47a
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14742
    :goto_480
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14743
    iput v3, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 14744
    iget-object v0, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v12, v25

    .end local v25    # "curItemView":Landroid/view/View;
    .local v12, "curItemView":Landroid/view/View;
    invoke-static {v0, v12, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mupdateImageWidth(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 14745
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    .end local v2    # "skippedAnimation":Z
    .end local v4    # "originalBitmap":Landroid/graphics/Bitmap;
    move/from16 v15, v24

    goto/16 :goto_524

    .line 14746
    .end local v12    # "curItemView":Landroid/view/View;
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    .restart local v13    # "curItemView":Landroid/view/View;
    .restart local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_493
    move/from16 v24, v6

    move-object v12, v13

    move-object/from16 v23, v15

    .end local v6    # "enabledCount":I
    .end local v13    # "curItemView":Landroid/view/View;
    .end local v15    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "curItemView":Landroid/view/View;
    .restart local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "enabledCount":I
    const/4 v1, 0x1

    .end local v24    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    if-ne v6, v1, :cond_49d

    move v0, v8

    goto :goto_49f

    :cond_49d
    const/16 v0, 0xa

    .line 14748
    .local v0, "updatedType":I
    :goto_49f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying deepsky position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14749
    const/4 v1, 0x0

    .line 14750
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v2

    if-eqz v2, :cond_4d4

    .line 14751
    iget-object v2, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    iget-object v5, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-static {v3, v4, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetKeyForCache(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;[Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/share/SemShareImageFetcher;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v13, v1

    goto :goto_4d5

    .line 14750
    :cond_4d4
    move-object v13, v1

    .line 14753
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    :goto_4d5
    if-eqz v13, :cond_514

    iget-object v1, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_514

    .line 14754
    iput-object v13, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    .line 14755
    iget-object v2, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    move-object v3, v12

    move-object v4, v13

    move/from16 v5, p2

    move v15, v6

    .end local v6    # "enabledCount":I
    .local v15, "enabledCount":I
    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->updateImageFromCache(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;II)V

    .line 14756
    iput v0, v11, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 14757
    iget-object v1, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected enhancement from cache for type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_524

    .line 14753
    .end local v15    # "enabledCount":I
    .restart local v6    # "enabledCount":I
    :cond_514
    move v15, v6

    .line 14760
    .end local v6    # "enabledCount":I
    .restart local v15    # "enabledCount":I
    iget-object v1, v10, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14761
    iget-object v1, v7, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v3, 0x1

    if-eq v15, v3, :cond_521

    move v2, v3

    :cond_521
    invoke-virtual {v1, v2, v9, v8}, Lcom/android/internal/app/ChooserActivity;->requestEnhancedImage(ZII)V

    .line 14764
    .end local v0    # "updatedType":I
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :goto_524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View clicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14765
    return-void

    .line 14591
    .end local v12    # "curItemView":Landroid/view/View;
    .end local v15    # "enabledCount":I
    .end local v23    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_545
    :goto_545
    return-void
.end method

.method private blacklist initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14559
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14560
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_32

    .line 14561
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14562
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 14563
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 14564
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mclearEnhanceIconVisibility(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V

    .line 14565
    new-array v3, v4, [Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    goto :goto_4b

    .line 14567
    :cond_32
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14568
    iget-object v3, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14569
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    invoke-static {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->-$$Nest$mupdateEnhancementButtonVisibility(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;[Z)V

    .line 14571
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateSelectedEnhancements([Z)V

    .line 14572
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemLogForSmartShareOpen(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;)V

    .line 14574
    :goto_4b
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    if-ne v3, p1, :cond_59

    .line 14575
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5e

    .line 14577
    :cond_59
    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14579
    :goto_5e
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14580
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050364

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14581
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14583
    .end local v0    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    return-void
.end method

.method private blacklist updateImageFromCache(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;II)V
    .registers 9
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "curItemView"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "position"    # I
    .param p5, "type"    # I

    .line 14499
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14500
    .local v0, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    const/4 v1, 0x1

    if-ne p5, v1, :cond_25

    .line 14501
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_1f

    .line 14502
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14504
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14506
    :cond_25
    const/4 v1, 0x3

    if-ne p5, v1, :cond_3a

    .line 14507
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_34

    .line 14508
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14510
    :cond_34
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14512
    :cond_3a
    const/4 v1, 0x2

    if-ne p5, v1, :cond_4f

    .line 14513
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->appliedEnhancements:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_49

    .line 14514
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14516
    :cond_49
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1, p4, p3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyReverseTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_58

    .line 14519
    :cond_4f
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14520
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14522
    :goto_58
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14523
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14524
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p2, p4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mupdateImageWidth(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 14525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected enhancement from cache for multi type bitmap:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GalleryShareSheet"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14526
    return-void
.end method


# virtual methods
.method blacklist bindIntentItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 14530
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14532
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mconvertGalleryInfo(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14534
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14535
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    .line 14536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    goto :goto_71

    .line 14539
    :cond_35
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14540
    .local v0, "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_51

    .line 14541
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_88

    .line 14542
    :cond_51
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    if-eqz v1, :cond_5d

    .line 14543
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_88

    .line 14544
    :cond_5d
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_69

    .line 14545
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_88

    .line 14547
    :cond_69
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_88

    .line 14537
    .end local v0    # "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    :cond_71
    :goto_71
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14551
    :goto_88
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14552
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14553
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14554
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14555
    return-void
.end method

.method blacklist bindSliceItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 14335
    const-string v0, ""

    .line 14337
    .local v0, "viewholderDescription":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->initEnhancementLayout(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14339
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_147

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    if-nez v1, :cond_3f

    goto/16 :goto_147

    .line 14359
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    if-ne v1, v2, :cond_64

    goto :goto_a4

    .line 14375
    :cond_64
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 14376
    .local v1, "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_81

    .line 14377
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1e7

    .line 14378
    :cond_81
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    if-eqz v5, :cond_8e

    .line 14379
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_1e7

    .line 14380
    :cond_8e
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_9b

    .line 14381
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1e7

    .line 14383
    :cond_9b
    iget-object v5, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_1e7

    .line 14361
    .end local v1    # "currImageInfo":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    :cond_a4
    :goto_a4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_11c

    .line 14362
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v1, v5, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    .line 14363
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_f1

    .line 14364
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14365
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->registerObserver(Landroid/net/Uri;I)V

    goto/16 :goto_1e7

    .line 14367
    :cond_f1
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14368
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    goto/16 :goto_1e7

    .line 14371
    :cond_11c
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14372
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    goto/16 :goto_1e7

    .line 14341
    :cond_147
    :goto_147
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v1, v5, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallGallerySliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;Landroid/net/Uri;I)V

    .line 14343
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_195

    .line 14344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder: mGalleryImageInfoHash["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = null, skip draw a preview image!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14345
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14346
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 14347
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14348
    return-void

    .line 14351
    :cond_195
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_1be

    .line 14352
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14353
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->registerObserver(Landroid/net/Uri;I)V

    goto :goto_1e7

    .line 14355
    :cond_1be
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v5, v5, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 14356
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iput-object v4, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->image:Landroid/graphics/drawable/Icon;

    .line 14388
    :goto_1e7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 14389
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v0, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->dateTime:Ljava/lang/String;

    .line 14392
    :cond_201
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLeftViewAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    if-nez v1, :cond_25c

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmRightViewAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-nez v1, :cond_25c

    .line 14393
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity;->mScrolltoPosition:I

    if-ge p1, v1, :cond_236

    .line 14394
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-eq v1, v2, :cond_22b

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-le v1, p1, :cond_230

    .line 14395
    :cond_22b
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmBindedMinPosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14397
    :cond_230
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsBindedLowPosition(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_256

    .line 14398
    :cond_236
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity;->mScrolltoPosition:I

    if-le p1, v1, :cond_256

    .line 14399
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-eq v1, v2, :cond_24c

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-ge v1, p1, :cond_251

    .line 14400
    :cond_24c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmBindedMaxPosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 14402
    :cond_251
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsBindedHighPosition(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 14404
    :cond_256
    :goto_256
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_26f

    .line 14405
    :cond_25c
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDrawerAnimStarted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 14406
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_26f

    .line 14408
    :cond_26a
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 14411
    :goto_26f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e0

    .line 14412
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14413
    .local v1, "ischecked":Z
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14414
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    instance-of v8, v8, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    if-eqz v8, :cond_2a6

    .line 14415
    iget-object v8, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    check-cast v8, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/ChooserActivity$RoundRectCornerImageView;->semSetChecked(Z)V

    .line 14417
    :cond_2a6
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2df

    .line 14418
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v8

    .line 14419
    .local v5, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShouldSkipAnim(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v6

    if-eqz v6, :cond_2d0

    .line 14420
    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_2d5

    .line 14422
    :cond_2d0
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 14424
    :goto_2d5
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 14425
    iget-object v6, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14427
    .end local v1    # "ischecked":Z
    .end local v5    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_2df
    goto :goto_2e5

    .line 14428
    :cond_2e0
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14431
    :goto_2e5
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isFavourite:Z

    const-string v5, ", "

    if-ne v1, v7, :cond_334

    .line 14432
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1080bbc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14433
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_339

    .line 14434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c85

    invoke-virtual {v4, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_339

    .line 14437
    :cond_334
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14440
    :cond_339
    :goto_339
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_393

    .line 14441
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    if-ne v1, v4, :cond_375

    .line 14442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c87

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_393

    .line 14444
    :cond_375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1040c86

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14448
    :cond_393
    :goto_393
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    const v5, 0x10808aa

    if-ne v1, v7, :cond_3f4

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_3f4

    .line 14450
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14451
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14452
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14453
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14454
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_573

    .line 14455
    :cond_3f4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_453

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_453

    .line 14457
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14458
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14459
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14460
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14461
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_573

    .line 14462
    :cond_453
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->groupType:I

    if-ne v1, v4, :cond_4b1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    .line 14463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isCloud:Z

    if-nez v1, :cond_4b1

    .line 14464
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14465
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14466
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14467
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14468
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_573

    .line 14469
    :cond_4b1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    if-ne v1, v4, :cond_4f9

    .line 14470
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14471
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14472
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080324

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14473
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 14474
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto/16 :goto_573

    .line 14475
    :cond_4f9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->sefFileType:I

    const/16 v4, 0xa30

    if-ne v1, v4, :cond_56e

    .line 14476
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14477
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14478
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->isGroupSelected:Z

    if-eqz v1, :cond_54d

    .line 14479
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_55f

    .line 14481
    :cond_54d
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10808c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14483
    :goto_55f
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetColorFilterForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;I)V

    .line 14484
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemSetTextForTypeImage(Lcom/android/internal/app/ChooserActivity;Landroid/widget/TextView;I)V

    goto :goto_573

    .line 14486
    :cond_56e
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14489
    :goto_573
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsTalkBackEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_580

    .line 14490
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14492
    :cond_580
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14493
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14494
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14495
    iget-object v1, p2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14496
    return-void
.end method

.method public blacklist getItemCount()I
    .registers 2

    .line 14769
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v0, :cond_11

    .line 14770
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryThumbUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 14772
    :cond_11
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGallerySliceUri(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$onBindViewHolder$0$com-android-internal-app-ChooserActivity$GalleryAdapter(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "galleryViewHolder"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .param p3, "clickedView"    # Landroid/view/View;

    .line 14321
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14322
    .local v0, "type":I
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->handleEnhancementBtnClicked(IILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14323
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 14306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryShareSheet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14309
    instance-of v0, p1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    if-eqz v0, :cond_67

    .line 14310
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050364

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14311
    .local v0, "height":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 14312
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 14314
    :cond_3f
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    .line 14315
    .local v1, "iv":Landroid/widget/ImageView;
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_52

    .line 14316
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14319
    :cond_52
    move-object v2, p1

    check-cast v2, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    .line 14320
    .local v2, "galleryViewHolder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    new-instance v3, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V

    .line 14325
    .local v3, "listener":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mGalleryShareSliceUri:Landroid/net/Uri;

    if-eqz v4, :cond_64

    .line 14326
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->bindSliceItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V

    goto :goto_67

    .line 14328
    :cond_64
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->bindIntentItemViewHolder(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View$OnClickListener;)V

    .line 14332
    .end local v0    # "height":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "galleryViewHolder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :cond_67
    :goto_67
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 14299
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109015b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 14300
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V

    .line 14301
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
    return-object v1
.end method

.method public blacklist registerObserver(Landroid/net/Uri;I)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "position"    # I

    .line 14293
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mGalleryObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryShareSheet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14295
    return-void
.end method
