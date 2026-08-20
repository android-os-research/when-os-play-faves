.class final Landroid/widget/RemoteViews$AttributeReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributeReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mAttrId:I

.field private final blacklist mResourceType:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;III)V
    .registers 7
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "parameterType"    # I
    .param p5, "resourceType"    # I
    .param p6, "attrId"    # I

    .line 2306
    iput-object p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2307
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2308
    iput p5, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2309
    iput p6, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2310
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2312
    iput-object p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2313
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    .line 2315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2316
    return-void
.end method


# virtual methods
.method public blacklist getActionTag()I
    .registers 2

    .line 2387
    const/16 v0, 0x20

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2327
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2330
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_10
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    if-eqz v1, :cond_40

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_40

    .line 2331
    :cond_1b
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not defined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2334
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :cond_40
    :goto_40
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    packed-switch v1, :pswitch_data_142

    .line 2373
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_11a

    .line 2360
    :pswitch_49
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_14c

    .line 2366
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_61

    .line 2362
    :pswitch_51
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_55
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_10 .. :try_end_55} :catch_13a
    .catchall {:try_start_10 .. :try_end_55} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2362
    return-object v1

    .line 2364
    :pswitch_59
    :try_start_59
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5d
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_59 .. :try_end_5d} :catch_13a
    .catchall {:try_start_59 .. :try_end_5d} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2364
    return-object v1

    .line 2366
    :goto_61
    :try_start_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "string attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2367
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2348
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_8b
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    sparse-switch v1, :sswitch_data_154

    .line 2354
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_a7

    .line 2352
    :sswitch_93
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_97
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_61 .. :try_end_97} :catch_13a
    .catchall {:try_start_61 .. :try_end_97} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2352
    return-object v1

    .line 2350
    :sswitch_9b
    :try_start_9b
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_a3
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_9b .. :try_end_a3} :catch_13a
    .catchall {:try_start_9b .. :try_end_a3} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2350
    return-object v1

    .line 2354
    :goto_a7
    :try_start_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "color attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2355
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2336
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_d0
    iget v1, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    packed-switch v1, :pswitch_data_15e

    .line 2342
    :pswitch_d5
    new-instance v1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_f1

    .line 2340
    :pswitch_d8
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_e1
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_a7 .. :try_end_e1} :catch_13a
    .catchall {:try_start_a7 .. :try_end_e1} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2340
    return-object v1

    .line 2338
    :pswitch_e5
    :try_start_e5
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_ed
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_e5 .. :try_end_ed} :catch_13a
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_133

    .line 2381
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2338
    return-object v1

    .line 2342
    :goto_f1
    :try_start_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dimen attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    .line 2343
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be used as INT or FLOAT, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1

    .line 2373
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :goto_11a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_133
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_f1 .. :try_end_133} :catch_13a
    .catchall {:try_start_f1 .. :try_end_133} :catchall_133

    .line 2378
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_133
    move-exception v1

    .line 2379
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_134
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2

    .line 2376
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catch_13a
    move-exception v1

    .line 2377
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    nop

    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_13d

    .line 2381
    .end local v1    # "ex":Landroid/widget/RemoteViews$ActionException;
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/widget/RemoteViews$AttributeReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_13d
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2382
    throw v1

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_8b
        :pswitch_49
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x9
        :pswitch_59
        :pswitch_51
    .end packed-switch

    :sswitch_data_154
    .sparse-switch
        0x4 -> :sswitch_9b
        0xf -> :sswitch_93
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x4
        :pswitch_e5
        :pswitch_d5
        :pswitch_d8
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2320
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2321
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mResourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    iget v0, p0, Landroid/widget/RemoteViews$AttributeReflectionAction;->mAttrId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    return-void
.end method
