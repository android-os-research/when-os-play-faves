.class Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetViewOutlinePreferredRadiusAction"
.end annotation


# instance fields
.field private final blacklist mValue:I

.field private final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IFI)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "radius"    # F
    .param p3, "units"    # I

    .line 3704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3705
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3706
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3707
    invoke-static {p2, p3}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3709
    return-void
.end method

.method constructor blacklist <init>(III)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "value"    # I
    .param p3, "valueType"    # I

    .line 3697
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3698
    iput p1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3699
    iput p3, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3700
    iput p2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3701
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3711
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 3712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    .line 3713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    .line 3714
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3715
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3727
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3728
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    return-void

    .line 3732
    :cond_9
    :try_start_9
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_66

    .line 3750
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    goto :goto_52

    .line 3734
    :pswitch_12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget v4, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_5e

    .line 3737
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    :try_start_22
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2b

    .line 3739
    .local v2, "radius":F
    :try_start_26
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3740
    nop

    .line 3741
    goto :goto_54

    .line 3739
    .end local v2    # "radius":F
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3740
    nop

    .end local v0    # "target":Landroid/view/View;
    .end local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .end local p1    # "root":Landroid/view/View;
    .end local p2    # "rootParent":Landroid/view/ViewGroup;
    .end local p3    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local p4    # "colorResources":Landroid/widget/RemoteViews$ColorResources;
    throw v2

    .line 3743
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    .restart local v0    # "target":Landroid/view/View;
    .restart local p0    # "this":Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;
    .restart local p1    # "root":Landroid/view/View;
    .restart local p2    # "rootParent":Landroid/view/ViewGroup;
    .restart local p3    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local p4    # "colorResources":Landroid/widget/RemoteViews$ColorResources;
    :pswitch_31
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    if-nez v1, :cond_36

    :goto_35
    goto :goto_41

    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_35

    .line 3744
    .restart local v2    # "radius":F
    :goto_41
    goto :goto_54

    .line 3746
    .end local v2    # "radius":F
    :pswitch_42
    iget v1, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    .line 3747
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 3746
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    move v2, v1

    .line 3748
    .restart local v2    # "radius":F
    goto :goto_54

    .line 3750
    .end local v2    # "radius":F
    :goto_52
    int-to-float v1, v1

    move v2, v1

    .line 3752
    .restart local v2    # "radius":F
    :goto_54
    new-instance v1, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_5c
    .catchall {:try_start_26 .. :try_end_5c} :catchall_5e

    .line 3755
    .end local v2    # "radius":F
    nop

    .line 3756
    return-void

    .line 3753
    :catchall_5e
    move-exception v1

    .line 3754
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v2, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_42
        :pswitch_31
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3760
    const/16 v0, 0x1c

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3719
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3720
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValueType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3721
    iget v0, p0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3722
    return-void
.end method
