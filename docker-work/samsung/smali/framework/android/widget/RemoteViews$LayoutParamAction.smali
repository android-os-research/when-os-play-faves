.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field static final blacklist LAYOUT_HEIGHT:I = 0x9

.field static final blacklist LAYOUT_MARGIN_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_MARGIN_END:I = 0x5

.field static final blacklist LAYOUT_MARGIN_LEFT:I = 0x0

.field static final blacklist LAYOUT_MARGIN_RIGHT:I = 0x2

.field static final blacklist LAYOUT_MARGIN_START:I = 0x4

.field static final blacklist LAYOUT_MARGIN_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_WIDTH:I = 0x8


# instance fields
.field final greylist-max-o mProperty:I

.field final greylist-max-o mValue:I

.field final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IIFI)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # F
    .param p4, "units"    # I

    .line 3289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3290
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3291
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3292
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3293
    invoke-static {p3, p4}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3294
    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .registers 6
    .param p1, "viewId"    # I
    .param p2, "property"    # I
    .param p3, "value"    # I
    .param p4, "valueType"    # I

    .line 3304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3305
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3306
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3307
    iput p4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3308
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3309
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 3311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    .line 3313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 3314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 3315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3316
    return-void
.end method

.method private blacklist getPixelOffset(Landroid/view/View;)I
    .registers 6
    .param p1, "target"    # Landroid/view/View;

    .line 3388
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4e

    .line 3406
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_45

    .line 3390
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_46

    .line 3393
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 3395
    :try_start_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3393
    return v1

    .line 3395
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3396
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 3398
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_26
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_2b

    .line 3399
    return v1

    .line 3401
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0

    .line 3403
    :pswitch_36
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3404
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3403
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_46

    return v0

    .line 3406
    :goto_45
    return v0

    .line 3408
    :catchall_46
    move-exception v0

    .line 3409
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_36
        :pswitch_26
        :pswitch_9
    .end packed-switch
.end method

.method private blacklist getPixelSize(Landroid/view/View;)I
    .registers 6
    .param p1, "target"    # Landroid/view/View;

    .line 3415
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4e

    .line 3433
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_45

    .line 3417
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_46

    .line 3420
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_18
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 3422
    :try_start_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3420
    return v1

    .line 3422
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3423
    nop

    .end local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .end local p1    # "target":Landroid/view/View;
    throw v1

    .line 3425
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$LayoutParamAction;
    .restart local p1    # "target":Landroid/view/View;
    :pswitch_26
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_2b

    .line 3426
    return v1

    .line 3428
    :cond_2b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 3430
    :pswitch_36
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 3431
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3430
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_46

    return v0

    .line 3433
    :goto_45
    return v0

    .line 3435
    :catchall_46
    move-exception v0

    .line 3436
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_36
        :pswitch_26
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 3328
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3329
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    .line 3330
    return-void

    .line 3332
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3333
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_10

    .line 3334
    return-void

    .line 3336
    :cond_10
    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    packed-switch v2, :pswitch_data_ae

    .line 3382
    :pswitch_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3378
    :pswitch_30
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3379
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3380
    goto/16 :goto_ac

    .line 3374
    :pswitch_3b
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3375
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3376
    goto :goto_ac

    .line 3368
    :pswitch_45
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3369
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 3370
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 3362
    :pswitch_57
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3363
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 3364
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 3356
    :pswitch_69
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3357
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3358
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 3350
    :pswitch_7a
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3351
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3352
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 3344
    :pswitch_8b
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3345
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3346
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 3338
    :pswitch_9c
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_ac

    .line 3339
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3340
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3384
    :cond_ac
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8b
        :pswitch_7a
        :pswitch_69
        :pswitch_57
        :pswitch_45
        :pswitch_15
        :pswitch_15
        :pswitch_3b
        :pswitch_30
    .end packed-switch
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 3442
    const/16 v0, 0x13

    return v0
.end method

.method public greylist-max-o getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 3447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3319
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3321
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3322
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    return-void
.end method
