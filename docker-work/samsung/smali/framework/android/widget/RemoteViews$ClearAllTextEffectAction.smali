.class Landroid/widget/RemoteViews$ClearAllTextEffectAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllTextEffectAction"
.end annotation


# static fields
.field public static final blacklist TAG:I = 0x29


# instance fields
.field final blacklist methodName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .registers 3
    .param p2, "viewId"    # I

    .line 7461
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7484
    const-string p1, "clearAllTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 7462
    iput p2, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    .line 7463
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7465
    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7484
    const-string p1, "clearAllTextEffect"

    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    .line 7466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    .line 7467
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7475
    iget v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7476
    .local v0, "target":Landroid/widget/TextView;
    if-nez v0, :cond_b

    return-void

    .line 7477
    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 7478
    return-void
.end method

.method public blacklist getActionName()Ljava/lang/String;
    .registers 2

    .line 7481
    const-string v0, "ClearAllTextEffectAction"

    return-object v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 7486
    const/16 v0, 0x29

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7470
    iget v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7471
    return-void
.end method
