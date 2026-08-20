.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSetLongClickPendingIntentTemplate"
.end annotation


# instance fields
.field blacklist pendingIntentTemplate:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 7932
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7933
    iput p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->viewId:I

    .line 7934
    iput-object p3, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 7935
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7937
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7938
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->viewId:I

    .line 7939
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 7940
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7950
    iget v0, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7951
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_9

    .line 7952
    return-void

    .line 7957
    :cond_9
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1a

    .line 7958
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 7960
    .local v1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;-><init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 7998
    .local v2, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 7999
    .end local v1    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    nop

    .line 8004
    return-void

    .line 8000
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setLongClickPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8002
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 8008
    const/16 v0, 0x65

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7944
    iget v0, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7945
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7946
    return-void
.end method
