.class Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSetOnLongClickPendingIntent"
.end annotation


# instance fields
.field blacklist longClickPendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field blacklist viewId:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "longClickPendingIntent"    # Landroid/app/PendingIntent;

    .line 7869
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7870
    iput p2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    .line 7871
    iput-object p3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    .line 7872
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7874
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    .line 7876
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    .line 7877
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7887
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7888
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_14

    .line 7889
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 7900
    .local v1, "longClickListener":Landroid/view/View$OnLongClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7902
    .end local v1    # "longClickListener":Landroid/view/View$OnLongClickListener;
    :cond_14
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 7906
    const/16 v0, 0x64

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7881
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7882
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7883
    return-void
.end method
