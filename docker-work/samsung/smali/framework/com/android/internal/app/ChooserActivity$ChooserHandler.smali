.class Lcom/android/internal/app/ChooserActivity$ChooserHandler;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final blacklist CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final blacklist LIST_VIEW_UPDATE_MESSAGE:I = 0x6

.field private static final blacklist SEM_NEARBY_SHARE_UPDATE_MESSAGE:I = 0x8

.field private static final blacklist SEM_POSTPONE_ENTER_TRANSITION_TIMEOUT:I = 0x64

.field private static final blacklist SEM_POSTPONE_ENTER_TRANSITION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final blacklist SEM_QUICK_SHARE_UPDATE_MESSAGE:I = 0x9

.field private static final blacklist SHORTCUT_MANAGER_ALL_SHARE_TARGET_RESULTS:I = 0x7

.field private static final blacklist SSS_UPDATE_CROP_RESULT:I = 0xb

.field private static final blacklist SSS_UPDATE_DETECTION_RESULT:I = 0xa

.field private static final blacklist SSS_UPDATE_MULTIPLE_RESULT:I = 0xf

.field private static final blacklist SSS_UPDATE_REMASTER_RESULT:I = 0xd

.field private static final blacklist SSS_UPDATE_ROTATE_RESULT:I = 0xe

.field private static final blacklist SSS_UPDATE_TILT_RESULT:I = 0xc


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mremoveAllMessages(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeAllMessages()V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    .line 1185
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 2

    .line 1209
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1210
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1211
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v0, :cond_11

    .line 1212
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1215
    :cond_11
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1218
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 1220
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 1224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_42b

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    if-eqz v2, :cond_42b

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 1225
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    if-nez v2, :cond_1e

    goto/16 :goto_42b

    .line 1229
    :cond_1e
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x1020550

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, "GalleryShareSheet"

    const-string v7, "ChooserActivity"

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_42c

    .line 1450
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_42a

    .line 1302
    :sswitch_33
    const-string v2, "SEM_POSTPONE_ENTER_TRANSITION_TIMEOUT"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->startPostponedEnterTransition()V

    .line 1304
    goto/16 :goto_42a

    .line 1312
    :sswitch_3f
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1313
    .local v2, "position":I
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1314
    .local v7, "type":I
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetProcessingImagePosition(Lcom/android/internal/app/ChooserActivity;I)V

    .line 1315
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v10}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 1316
    .local v10, "itemView":Landroid/view/View;
    iget-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/Bitmap;

    .line 1317
    .local v11, "result":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_125

    .line 1318
    const v6, 0x1020566

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 1319
    .local v6, "pb":Landroid/widget/ProgressBar;
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1320
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1321
    .local v3, "iv":Landroid/widget/ImageView;
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 1322
    .local v12, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    if-eqz v11, :cond_10b

    .line 1323
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget v14, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredHeight:I

    .line 1324
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    iget v14, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->scale:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredWidth:I

    .line 1325
    iget v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredHeight:I

    iget v14, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableHeight:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v9, :cond_a4

    .line 1326
    iget v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableHeight:I

    iput v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredHeight:I

    .line 1328
    :cond_a4
    iget v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredWidth:I

    iget v14, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableWidth:I

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-gt v13, v9, :cond_b3

    .line 1329
    iget v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->originalDrawableWidth:I

    iput v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->measuredWidth:I

    .line 1331
    :cond_b3
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13, v11, v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mgetScaledThumbnail(Lcom/android/internal/app/ChooserActivity;Landroid/graphics/Bitmap;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1332
    .local v13, "enhancedThumbnail":Landroid/graphics/Bitmap;
    if-nez v7, :cond_c4

    .line 1333
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1334
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_108

    .line 1335
    :cond_c4
    iget v14, v1, Landroid/os/Message;->what:I

    const/16 v15, 0xb

    if-ne v14, v15, :cond_d0

    .line 1336
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1337
    :cond_d0
    iget v14, v1, Landroid/os/Message;->what:I

    const/16 v15, 0xe

    if-ne v14, v15, :cond_dc

    .line 1338
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1339
    :cond_dc
    iget v14, v1, Landroid/os/Message;->what:I

    const/16 v15, 0xc

    if-ne v14, v15, :cond_e8

    .line 1340
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1341
    :cond_e8
    if-ne v7, v9, :cond_f0

    .line 1342
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyCropReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1343
    :cond_f0
    if-ne v7, v5, :cond_f8

    .line 1344
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyRotateReverseAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1345
    :cond_f8
    if-ne v7, v4, :cond_100

    .line 1346
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v3, v2, v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemApplyReverseTiltAnimation(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageView;ILandroid/graphics/Bitmap;)V

    goto :goto_108

    .line 1348
    :cond_100
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1349
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1351
    :goto_108
    iput-object v13, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedThumbnail:Landroid/graphics/Bitmap;

    .line 1352
    .end local v13    # "enhancedThumbnail":Landroid/graphics/Bitmap;
    goto :goto_115

    .line 1353
    :cond_10b
    iget-object v4, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1354
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetEnhancedImageProcessState(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1356
    :goto_115
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;I)V

    .line 1357
    iput v7, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->currentEnhancementIndex:I

    .line 1358
    iput-object v11, v12, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->enhancedBitmap:Landroid/graphics/Bitmap;

    .line 1359
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v10, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mupdateImageWidth(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 1360
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v6    # "pb":Landroid/widget/ProgressBar;
    .end local v12    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    goto/16 :goto_42a

    .line 1361
    :cond_125
    const-string v3, "Failed to update enhanced image"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    goto/16 :goto_42a

    .line 1365
    .end local v2    # "position":I
    .end local v7    # "type":I
    .end local v10    # "itemView":Landroid/view/View;
    .end local v11    # "result":Landroid/graphics/Bitmap;
    :sswitch_12c
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1366
    .local v2, "pos":I
    iget-object v7, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 1367
    .local v7, "curItemView":Landroid/view/View;
    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Bundle;

    .line 1368
    .local v10, "bundle":Landroid/os/Bundle;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Detection result curItemView : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", at position : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    if-eqz v7, :cond_32d

    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_32d

    .line 1370
    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v12, 0x1020545

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-static {v11, v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mclearEnhanceIconVisibility(Lcom/android/internal/app/ChooserActivity;Landroid/widget/LinearLayout;)V

    .line 1371
    const-string v11, "crop_result"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 1372
    .local v11, "rect":Landroid/graphics/Rect;
    const-string/jumbo v12, "tilt_result"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1373
    .local v12, "tiltAngle":I
    const-string/jumbo v13, "remaster_result"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1374
    .local v13, "revitalType":I
    new-instance v14, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->uri:Landroid/net/Uri;

    invoke-direct {v14, v3, v2}, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;-><init>(Landroid/net/Uri;I)V

    move-object v3, v14

    .line 1376
    .local v3, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    const-string/jumbo v14, "privacy_result"

    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 1377
    .local v14, "isPrivateImage":Z
    iput-boolean v14, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    .line 1378
    if-eqz v14, :cond_1dd

    .line 1379
    const-string/jumbo v15, "privacy_cat_result"

    invoke-virtual {v10, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->privateCategory:Ljava/lang/String;

    .line 1380
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsCheckedList(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v5, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 1381
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsPrivateShareEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1384
    :cond_1dd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detection result :  crop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tilt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remaster: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPrivateImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mIsPrivateShareEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsPrivateShareEnabled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-eqz v11, :cond_243

    .line 1389
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->possibleEnhancementCount:[I

    aget v5, v4, v9

    add-int/2addr v5, v9

    aput v5, v4, v9

    .line 1390
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    aput-boolean v9, v4, v9

    .line 1391
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->cropPos:Landroid/graphics/Rect;

    .line 1392
    const v4, 0x1020293

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1393
    .local v4, "cropLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1395
    .end local v4    # "cropLayout":Landroid/widget/LinearLayout;
    :cond_243
    if-eqz v12, :cond_282

    .line 1396
    const/16 v4, 0x2d

    if-ge v12, v4, :cond_266

    .line 1397
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->possibleEnhancementCount:[I

    const/4 v5, 0x2

    aget v6, v4, v5

    add-int/2addr v6, v9

    aput v6, v4, v5

    .line 1398
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    aput-boolean v9, v4, v5

    .line 1399
    iput v12, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->tiltVal:I

    .line 1400
    const v4, 0x1020637

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1401
    .local v4, "tiltLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1402
    .end local v4    # "tiltLayout":Landroid/widget/LinearLayout;
    goto :goto_282

    .line 1403
    :cond_266
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->possibleEnhancementCount:[I

    const/4 v5, 0x3

    aget v6, v4, v5

    add-int/2addr v6, v9

    aput v6, v4, v5

    .line 1404
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    aput-boolean v9, v4, v5

    .line 1405
    iput v12, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->tiltVal:I

    .line 1406
    const v4, 0x1020500

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1407
    .local v4, "rotateLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1410
    .end local v4    # "rotateLayout":Landroid/widget/LinearLayout;
    :cond_282
    :goto_282
    if-lez v13, :cond_29f

    .line 1411
    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->possibleEnhancementCount:[I

    aget v5, v4, v8

    add-int/2addr v5, v9

    aput v5, v4, v8

    .line 1412
    iget-object v4, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->availableEnhancements:[Z

    aput-boolean v9, v4, v8

    .line 1413
    iput v13, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->remasterVal:I

    .line 1414
    const v4, 0x10204d4

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1415
    .local v4, "remasterLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1417
    .end local v4    # "remasterLayout":Landroid/widget/LinearLayout;
    :cond_29f
    const v4, 0x1020550

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1418
    .local v4, "iv":Landroid/widget/ImageView;
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity;->semIsDeviceInLandscape()Z

    move-result v5

    if-eqz v5, :cond_2bd

    .line 1419
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iput v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewWidthLand:I

    .line 1420
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    iput v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightLand:I

    goto :goto_2c9

    .line 1422
    :cond_2bd
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    iput v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewWidthPortrait:I

    .line 1423
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    iput v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->viewHeightPortrait:I

    .line 1425
    :goto_2c9
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    if-nez v11, :cond_2f1

    if-nez v12, :cond_2f1

    if-lez v13, :cond_2dd

    goto :goto_2f1

    .line 1437
    :cond_2dd
    iget-boolean v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    if-eqz v5, :cond_2eb

    .line 1438
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcheckAndEnablePrivateShare(Lcom/android/internal/app/ChooserActivity;)V

    .line 1439
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v2, v7, v8, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$menablePrivateShareTip(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;ZZ)V

    .line 1441
    :cond_2eb
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemLogForSmartShareOpen(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;)V

    goto :goto_32b

    .line 1427
    :cond_2f1
    :goto_2f1
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedSmartShareTip(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v5

    if-eqz v5, :cond_317

    .line 1428
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v15, "chooser_smartshare_tip_count"

    invoke-interface {v6, v15, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v6, v9

    invoke-interface {v5, v15, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1430
    :cond_317
    iget-boolean v5, v3, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    if-eqz v5, :cond_326

    .line 1431
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcheckAndEnablePrivateShare(Lcom/android/internal/app/ChooserActivity;)V

    .line 1432
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v2, v7, v9, v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$menablePrivateShareTip(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;ZZ)V

    goto :goto_32b

    .line 1434
    :cond_326
    iget-object v5, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v2, v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowEnhancementIcons(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;)V

    .line 1443
    .end local v3    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    .end local v4    # "iv":Landroid/widget/ImageView;
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "tiltAngle":I
    .end local v13    # "revitalType":I
    .end local v14    # "isPrivateImage":Z
    :goto_32b
    goto/16 :goto_42a

    .line 1444
    :cond_32d
    const-string v3, "Failed to update detection type"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    goto/16 :goto_42a

    .line 1257
    .end local v2    # "pos":I
    .end local v7    # "curItemView":Landroid/view/View;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :sswitch_334
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsPinQSSliceCalled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v2

    if-eqz v2, :cond_42a

    .line 1259
    const-string v2, "SEM_QUICK_SHARE_UPDATE_MESSAGE"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 1263
    .local v2, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mQSChooserTargets:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ChooserListAdapter;->semAddDeviceTargetResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;)V

    .line 1265
    .end local v2    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    goto/16 :goto_42a

    .line 1242
    :sswitch_356
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsPinSliceCalled(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v2

    if-eqz v2, :cond_42a

    .line 1244
    const-string v2, "SEM_NEARBY_SHARE_UPDATE_MESSAGE; "

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    .line 1248
    .restart local v2    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, v4, Lcom/android/internal/app/ChooserActivity;->mNearbyChooserTargets:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ChooserListAdapter;->semAddDeviceTargetResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;)V

    .line 1251
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->semExecuteAsyncTaskForBindSlice()V

    .line 1252
    .end local v2    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    goto/16 :goto_42a

    .line 1270
    :sswitch_37d
    const-string v2, "SHORTCUT_MANAGER_ALL_SHARE_TARGET_RESULTS"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    .line 1272
    .local v2, "resultInfos":[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    array-length v3, v2

    move v4, v8

    :goto_388
    if-ge v4, v3, :cond_3f4

    aget-object v5, v2, v4

    .line 1273
    .local v5, "resultInfo":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    iget-object v6, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v6, :cond_3f1

    .line 1275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SHORTCUT_MANAGER_SHARE_TARGET_RESULT: size = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v6, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d6

    .line 1277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SHORTCUT_MANAGER_SHARE_TARGET_RESULT: resultTargets = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v9}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_3d6
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v6, v6, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    iget-object v9, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->userHandle:Landroid/os/UserHandle;

    .line 1281
    invoke-virtual {v6, v9}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v6

    .line 1283
    .local v6, "adapterForUserHandle":Lcom/android/internal/app/ChooserListAdapter;
    if-eqz v6, :cond_3f1

    .line 1284
    iget-object v9, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v10, v5, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    iget v11, v1, Landroid/os/Message;->arg1:I

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDirectShareShortcutInfoCache(Lcom/android/internal/app/ChooserActivity;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v6, v9, v10, v11, v12}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 1272
    .end local v5    # "resultInfo":Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    .end local v6    # "adapterForUserHandle":Lcom/android/internal/app/ChooserListAdapter;
    :cond_3f1
    add-int/lit8 v4, v4, 0x1

    goto :goto_388

    .line 1292
    :cond_3f4
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/16 v4, 0x6b6

    invoke-static {v3, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/ChooserActivity;I)V

    .line 1294
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 1295
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadComplete()V

    .line 1297
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    .line 1298
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->completeServiceTargetLoading()V

    .line 1299
    goto :goto_42a

    .line 1232
    .end local v2    # "resultInfos":[Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;
    :sswitch_415
    const-string v2, "LIST_VIEW_UPDATE_MESSAGE; "

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/UserHandle;

    .line 1236
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getListAdapterForUserHandle(Landroid/os/UserHandle;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v3

    .line 1237
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->refreshListView()V

    .line 1238
    nop

    .line 1452
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_42a
    :goto_42a
    return-void

    .line 1226
    :cond_42b
    :goto_42b
    return-void

    :sswitch_data_42c
    .sparse-switch
        0x6 -> :sswitch_415
        0x7 -> :sswitch_37d
        0x8 -> :sswitch_356
        0x9 -> :sswitch_334
        0xa -> :sswitch_12c
        0xb -> :sswitch_3f
        0xc -> :sswitch_3f
        0xd -> :sswitch_3f
        0xe -> :sswitch_3f
        0xf -> :sswitch_3f
        0x64 -> :sswitch_33
    .end sparse-switch
.end method
