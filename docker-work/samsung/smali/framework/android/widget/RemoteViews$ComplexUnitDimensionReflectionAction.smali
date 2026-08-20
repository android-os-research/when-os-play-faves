.class final Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComplexUnitDimensionReflectionAction"
.end annotation


# instance fields
.field private final blacklist mUnit:I

.field private final blacklist mValue:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/lang/String;IFI)V
    .registers 7
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "parameterType"    # I
    .param p5, "value"    # F
    .param p6, "unit"    # I

    .line 2397
    iput-object p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2398
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 2399
    iput p5, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 2400
    iput p6, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 2401
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2403
    iput-object p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->this$0:Landroid/widget/RemoteViews;

    .line 2404
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    .line 2405
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    .line 2407
    return-void
.end method


# virtual methods
.method public blacklist getActionTag()I
    .registers 2

    .line 2442
    const/16 v0, 0x19

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 2419
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2421
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2423
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_10
    iget v1, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 2424
    .local v1, "data":I
    iget v2, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->type:I

    packed-switch v2, :pswitch_data_56

    .line 2430
    :pswitch_1d
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    goto :goto_32

    .line 2428
    :pswitch_20
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 2426
    :pswitch_29
    invoke-static {v1, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 2430
    :goto_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parameter type must be INT or FLOAT, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .end local p1    # "view":Landroid/view/View;
    throw v2
    :try_end_4c
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_10 .. :try_end_4c} :catch_53
    .catchall {:try_start_10 .. :try_end_4c} :catchall_4c

    .line 2435
    .end local v1    # "data":I
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local p0    # "this":Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;
    .restart local p1    # "view":Landroid/view/View;
    :catchall_4c
    move-exception v1

    .line 2436
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2433
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_53
    move-exception v1

    .line 2434
    .local v1, "ex":Landroid/widget/RemoteViews$ActionException;
    throw v1

    nop

    :pswitch_data_56
    .packed-switch 0x4
        :pswitch_29
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2411
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2412
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2413
    iget v0, p0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->mUnit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    return-void
.end method
