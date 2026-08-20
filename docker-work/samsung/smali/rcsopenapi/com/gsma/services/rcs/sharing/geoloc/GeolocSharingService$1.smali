.class Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;
.super Ljava/lang/Object;
.source "GeolocSharingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 103
    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 105
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-static {p2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->setApi(Landroid/os/IInterface;)V

    .line 106
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$000(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$100(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceConnected()V

    .line 109
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 112
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->setApi(Landroid/os/IInterface;)V

    .line 113
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$200(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 114
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;->this$0:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    # getter for: Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;
    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->access$300(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;

    invoke-interface {v0, v1}, Lcom/gsma/services/rcs/RcsServiceListener;->onServiceDisconnected(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    .line 116
    :cond_19
    return-void
.end method
