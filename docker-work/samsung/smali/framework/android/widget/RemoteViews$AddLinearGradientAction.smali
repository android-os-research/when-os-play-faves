.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x2d


# instance fields
.field blacklist alphas:[F

.field blacklist angle:F

.field blacklist blendingOpacity:F

.field blacklist colors:[I

.field final blacklist methodName:Ljava/lang/String;

.field blacklist positions:[F

.field blacklist scale:F

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .registers 9
    .param p2, "viewId"    # I
    .param p3, "angle"    # F
    .param p4, "scale"    # F
    .param p5, "colors"    # [I
    .param p6, "alphas"    # [F
    .param p7, "positions"    # [F
    .param p8, "blendingOpacity"    # F

    .line 7647
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7695
    const-string p1, "addLinearGradientTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 7648
    iput p2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 7649
    iput p3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 7650
    iput p4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 7651
    iput-object p5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 7652
    iput-object p6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 7653
    iput-object p7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 7654
    iput p8, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 7655
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7657
    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7695
    const-string p1, "addLinearGradientTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    .line 7658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    .line 7659
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    .line 7660
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    .line 7661
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    .line 7662
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    .line 7663
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    .line 7664
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    .line 7665
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 13
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7679
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7680
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 7681
    :cond_b
    iget v2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iget v3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iget-object v4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iget-object v5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iget-object v6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iget v7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextView;->semAddLinearGradientTextEffect(FF[I[F[FF)I

    .line 7682
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .registers 2

    .line 7685
    const-string v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 7697
    const/16 v0, 0x2d

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7668
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7669
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7670
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7671
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7672
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 7673
    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 7674
    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7675
    return-void
.end method
