.class Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSetOnTouchPendingIntent"
.end annotation


# instance fields
.field blacklist pendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field blacklist viewId:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 8203
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8204
    iput p2, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->viewId:I

    .line 8205
    iput-object p3, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 8206
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 8208
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 8209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->viewId:I

    .line 8210
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 8211
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 8220
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8221
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_14

    .line 8222
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;)V

    .line 8264
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8266
    .end local v1    # "touchListener":Landroid/view/View$OnTouchListener;
    :cond_14
    return-void
.end method

.method public blacklist clear()V
    .registers 2

    .line 8275
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 8276
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 8270
    const/16 v0, 0x67

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 8214
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8215
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 8216
    return-void
.end method
