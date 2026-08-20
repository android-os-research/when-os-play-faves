.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;
    }
.end annotation


# instance fields
.field public whitelist alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist mBottom:I

.field private greylist-max-o mInitialRules:[I

.field private greylist-max-o mIsRtlCompatibilityMode:Z

.field private greylist mLeft:I

.field private greylist-max-o mNeedsLayoutResolution:Z

.field private greylist mRight:I

.field private greylist-max-o mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private greylist-max-o mRulesChanged:Z

.field private greylist mTop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1391
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 20
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1296
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1239
    const/16 v1, 0x16

    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1298
    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1301
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1302
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    const/4 v8, 0x1

    if-lt v6, v7, :cond_36

    .line 1303
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v9

    if-nez v9, :cond_34

    goto :goto_36

    :cond_34
    move v9, v2

    goto :goto_37

    :cond_36
    :goto_36
    move v9, v8

    :goto_37
    iput-boolean v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1305
    iget-object v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1307
    .local v9, "rules":[I
    iget-object v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1309
    .local v10, "initialRules":[I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 1310
    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_42
    if-ge v12, v11, :cond_143

    .line 1311
    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v13

    .line 1312
    .local v13, "attr":I
    const/4 v14, -0x1

    packed-switch v13, :pswitch_data_14c

    goto/16 :goto_13f

    .line 1380
    :pswitch_4e
    const/16 v15, 0x15

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_57

    goto :goto_58

    :cond_57
    move v14, v2

    :goto_58
    aput v14, v9, v15

    goto/16 :goto_13f

    .line 1377
    :pswitch_5c
    const/16 v15, 0x14

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_65

    goto :goto_66

    :cond_65
    move v14, v2

    :goto_66
    aput v14, v9, v15

    .line 1378
    goto/16 :goto_13f

    .line 1374
    :pswitch_6a
    const/16 v14, 0x13

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1375
    goto/16 :goto_13f

    .line 1371
    :pswitch_74
    const/16 v14, 0x12

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1372
    goto/16 :goto_13f

    .line 1368
    :pswitch_7e
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v7

    .line 1369
    goto/16 :goto_13f

    .line 1365
    :pswitch_86
    const/16 v14, 0x10

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1366
    goto/16 :goto_13f

    .line 1314
    :pswitch_90
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1315
    goto/16 :goto_13f

    .line 1362
    :pswitch_98
    const/16 v15, 0xf

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_a1

    goto :goto_a2

    :cond_a1
    move v14, v2

    :goto_a2
    aput v14, v9, v15

    .line 1363
    goto/16 :goto_13f

    .line 1359
    :pswitch_a6
    const/16 v15, 0xe

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_af

    goto :goto_b0

    :cond_af
    move v14, v2

    :goto_b0
    aput v14, v9, v15

    .line 1360
    goto/16 :goto_13f

    .line 1356
    :pswitch_b4
    const/16 v15, 0xd

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_bd

    goto :goto_be

    :cond_bd
    move v14, v2

    :goto_be
    aput v14, v9, v15

    .line 1357
    goto/16 :goto_13f

    .line 1353
    :pswitch_c2
    const/16 v15, 0xc

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_cb

    goto :goto_cc

    :cond_cb
    move v14, v2

    :goto_cc
    aput v14, v9, v15

    .line 1354
    goto/16 :goto_13f

    .line 1350
    :pswitch_d0
    const/16 v15, 0xb

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_d9

    goto :goto_da

    :cond_d9
    move v14, v2

    :goto_da
    aput v14, v9, v15

    .line 1351
    goto/16 :goto_13f

    .line 1347
    :pswitch_de
    const/16 v15, 0xa

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_e7

    goto :goto_e8

    :cond_e7
    move v14, v2

    :goto_e8
    aput v14, v9, v15

    .line 1348
    goto :goto_13f

    .line 1344
    :pswitch_eb
    const/16 v15, 0x9

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_f4

    goto :goto_f5

    :cond_f4
    move v14, v2

    :goto_f5
    aput v14, v9, v15

    .line 1345
    goto :goto_13f

    .line 1341
    :pswitch_f8
    const/16 v14, 0x8

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1342
    goto :goto_13f

    .line 1338
    :pswitch_101
    const/4 v14, 0x7

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1339
    goto :goto_13f

    .line 1335
    :pswitch_109
    const/4 v14, 0x6

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1336
    goto :goto_13f

    .line 1332
    :pswitch_111
    const/4 v14, 0x5

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1333
    goto :goto_13f

    .line 1329
    :pswitch_119
    const/4 v14, 0x4

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1330
    goto :goto_13f

    .line 1326
    :pswitch_121
    const/4 v14, 0x3

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1327
    goto :goto_13f

    .line 1323
    :pswitch_129
    const/4 v14, 0x2

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    .line 1324
    goto :goto_13f

    .line 1320
    :pswitch_131
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v8

    .line 1321
    goto :goto_13f

    .line 1317
    :pswitch_138
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v2

    .line 1318
    nop

    .line 1310
    .end local v13    # "attr":I
    :goto_13f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_42

    .line 1384
    .end local v12    # "i":I
    :cond_143
    iput-boolean v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1385
    invoke-static {v9, v2, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1388
    return-void

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_138
        :pswitch_131
        :pswitch_129
        :pswitch_121
        :pswitch_119
        :pswitch_111
        :pswitch_109
        :pswitch_101
        :pswitch_f8
        :pswitch_eb
        :pswitch_de
        :pswitch_d0
        :pswitch_c2
        :pswitch_b4
        :pswitch_a6
        :pswitch_98
        :pswitch_90
        :pswitch_86
        :pswitch_7e
        :pswitch_74
        :pswitch_6a
        :pswitch_5c
        :pswitch_4e
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1398
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1399
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1406
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .line 1415
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1417
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1418
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1419
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1421
    iget-object v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    iget-object v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    return-void
.end method

.method private greylist-max-o hasRelativeRules()Z
    .registers 3

    .line 1525
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x11

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x12

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x13

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x14

    aget v1, v0, v1

    if-nez v1, :cond_29

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method private greylist-max-o isRelativeRule(I)Z
    .registers 3
    .param p1, "rule"    # I

    .line 1531
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method private greylist-max-o resolveRules(I)V
    .registers 20
    .param p1, "layoutDirection"    # I

    .line 1550
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_a

    move v4, v1

    goto :goto_b

    :cond_a
    move v4, v2

    .line 1553
    .local v4, "isLayoutRtl":Z
    :goto_b
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    iget-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v6, 0x14

    const/16 v7, 0x10

    const/16 v8, 0x12

    const/16 v9, 0x15

    const/16 v10, 0x11

    const/16 v11, 0x13

    const/16 v12, 0xb

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/4 v15, 0x5

    if-eqz v5, :cond_76

    .line 1557
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v16, v5, v8

    if-eqz v16, :cond_38

    .line 1558
    aget v17, v5, v15

    if-nez v17, :cond_36

    .line 1561
    aput v16, v5, v15

    .line 1563
    :cond_36
    aput v2, v5, v8

    .line 1566
    :cond_38
    aget v8, v5, v11

    if-eqz v8, :cond_44

    .line 1567
    aget v15, v5, v14

    if-nez v15, :cond_42

    .line 1570
    aput v8, v5, v14

    .line 1572
    :cond_42
    aput v2, v5, v11

    .line 1575
    :cond_44
    aget v8, v5, v7

    if-eqz v8, :cond_50

    .line 1576
    aget v11, v5, v2

    if-nez v11, :cond_4e

    .line 1579
    aput v8, v5, v2

    .line 1581
    :cond_4e
    aput v2, v5, v7

    .line 1584
    :cond_50
    aget v7, v5, v10

    if-eqz v7, :cond_5c

    .line 1585
    aget v8, v5, v1

    if-nez v8, :cond_5a

    .line 1588
    aput v7, v5, v1

    .line 1590
    :cond_5a
    aput v2, v5, v10

    .line 1593
    :cond_5c
    aget v1, v5, v6

    if-eqz v1, :cond_68

    .line 1594
    aget v7, v5, v13

    if-nez v7, :cond_66

    .line 1597
    aput v1, v5, v13

    .line 1599
    :cond_66
    aput v2, v5, v6

    .line 1602
    :cond_68
    aget v1, v5, v9

    if-eqz v1, :cond_f8

    .line 1603
    aget v6, v5, v12

    if-nez v6, :cond_72

    .line 1606
    aput v1, v5, v12

    .line 1608
    :cond_72
    aput v2, v5, v9

    goto/16 :goto_f8

    .line 1612
    :cond_76
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v16, v5, v8

    if-nez v16, :cond_80

    aget v17, v5, v11

    if-eqz v17, :cond_8c

    :cond_80
    aget v17, v5, v15

    if-nez v17, :cond_88

    aget v17, v5, v14

    if-eqz v17, :cond_8c

    .line 1615
    :cond_88
    aput v2, v5, v15

    .line 1616
    aput v2, v5, v14

    .line 1618
    :cond_8c
    if-eqz v16, :cond_99

    .line 1620
    if-eqz v4, :cond_93

    move/from16 v17, v14

    goto :goto_95

    :cond_93
    move/from16 v17, v15

    :goto_95
    aput v16, v5, v17

    .line 1621
    aput v2, v5, v8

    .line 1623
    :cond_99
    aget v8, v5, v11

    if-eqz v8, :cond_a4

    .line 1625
    if-eqz v4, :cond_a0

    move v14, v15

    :cond_a0
    aput v8, v5, v14

    .line 1626
    aput v2, v5, v11

    .line 1629
    :cond_a4
    aget v8, v5, v7

    if-nez v8, :cond_ac

    aget v11, v5, v10

    if-eqz v11, :cond_b8

    :cond_ac
    aget v11, v5, v2

    if-nez v11, :cond_b4

    aget v11, v5, v1

    if-eqz v11, :cond_b8

    .line 1632
    :cond_b4
    aput v2, v5, v2

    .line 1633
    aput v2, v5, v1

    .line 1635
    :cond_b8
    if-eqz v8, :cond_c3

    .line 1637
    if-eqz v4, :cond_be

    move v11, v1

    goto :goto_bf

    :cond_be
    move v11, v2

    :goto_bf
    aput v8, v5, v11

    .line 1638
    aput v2, v5, v7

    .line 1640
    :cond_c3
    aget v7, v5, v10

    if-eqz v7, :cond_ce

    .line 1642
    if-eqz v4, :cond_ca

    move v1, v2

    :cond_ca
    aput v7, v5, v1

    .line 1643
    aput v2, v5, v10

    .line 1646
    :cond_ce
    aget v1, v5, v6

    if-nez v1, :cond_d6

    aget v7, v5, v9

    if-eqz v7, :cond_e2

    :cond_d6
    aget v7, v5, v13

    if-nez v7, :cond_de

    aget v7, v5, v12

    if-eqz v7, :cond_e2

    .line 1649
    :cond_de
    aput v2, v5, v13

    .line 1650
    aput v2, v5, v12

    .line 1652
    :cond_e2
    if-eqz v1, :cond_ed

    .line 1654
    if-eqz v4, :cond_e8

    move v7, v12

    goto :goto_e9

    :cond_e8
    move v7, v13

    :goto_e9
    aput v1, v5, v7

    .line 1655
    aput v2, v5, v6

    .line 1657
    :cond_ed
    aget v1, v5, v9

    if-eqz v1, :cond_f8

    .line 1659
    if-eqz v4, :cond_f4

    move v12, v13

    :cond_f4
    aput v1, v5, v12

    .line 1660
    aput v2, v5, v9

    .line 1664
    :cond_f8
    :goto_f8
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1665
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1666
    return-void
.end method

.method private greylist-max-o shouldResolveLayoutDirection(I)Z
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1719
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_17

    .line 1720
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1719
    :goto_18
    return v0
.end method


# virtual methods
.method public whitelist addRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1452
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1453
    return-void
.end method

.method public whitelist addRule(II)V
    .registers 5
    .param p1, "verb"    # I
    .param p2, "subject"    # I

    .line 1478
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 1480
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1483
    :cond_15
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1484
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1485
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1486
    return-void
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "output"    # Ljava/lang/String;

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1429
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1428
    return-object v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1726
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1727
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const-string/jumbo v1, "layout:alignWithParent"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1728
    return-void
.end method

.method public whitelist getRule(I)I
    .registers 3
    .param p1, "verb"    # I

    .line 1521
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getRules()[I
    .registers 2

    .line 1696
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public greylist-max-o getRules(I)[I
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1683
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1684
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public whitelist removeRule(I)V
    .registers 3
    .param p1, "verb"    # I

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1506
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 1710
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1715
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1716
    return-void
.end method
