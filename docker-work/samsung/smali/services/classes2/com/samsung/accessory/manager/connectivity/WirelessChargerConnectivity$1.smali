.class public Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessChargerConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 43
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", misc_event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "misc_event"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-static {v3}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$fgetmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x400

    and-int/2addr p1, v0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_69

    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-static {p1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$fgetmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)I

    move-result p1

    if-ne p1, v3, :cond_69

    .line 46
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "read bit set"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$fputmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)V

    goto :goto_7f

    .line 49
    :cond_69
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_7f

    .line 51
    invoke-static {}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "read bit clear"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-static {p0, v3}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->-$$Nest$fputmsgState(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;I)V

    :cond_7f
    :goto_7f
    return-void
.end method
