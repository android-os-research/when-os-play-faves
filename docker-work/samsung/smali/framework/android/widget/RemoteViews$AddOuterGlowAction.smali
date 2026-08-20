.class Landroid/widget/RemoteViews$AddOuterGlowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOuterGlowAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2e


# instance fields
.field blacklist blendingOpacity:F

.field blacklist color:I

.field final blacklist methodName:Ljava/lang/String;

.field blacklist size:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IFIF)V
    .registers 6
    .param p2, "viewId"    # I
    .param p3, "size"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .line 7704
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7740
    const-string p1, "addOuterGlowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->methodName:Ljava/lang/String;

    .line 7705
    iput p2, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    .line 7706
    iput p3, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    .line 7707
    iput p4, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    .line 7708
    iput p5, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    .line 7709
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7711
    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7740
    const-string p1, "addOuterGlowTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->methodName:Ljava/lang/String;

    .line 7712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    .line 7713
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    .line 7714
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    .line 7715
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    .line 7716
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7727
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7728
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 7729
    :cond_b
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    iget v2, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    iget v3, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->semAddOuterGlowTextEffect(FIF)I

    .line 7730
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .registers 2

    .line 7733
    const-string v0, "AddOuterGlowAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 7742
    const/16 v0, 0x2e

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7719
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7720
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->size:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7721
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7722
    iget v0, p0, Landroid/widget/RemoteViews$AddOuterGlowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7723
    return-void
.end method
