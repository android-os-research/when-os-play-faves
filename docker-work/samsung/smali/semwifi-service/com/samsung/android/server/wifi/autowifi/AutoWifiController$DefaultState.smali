.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 710
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private isSimCardReady()Z
    .registers 3

    .line 712
    invoke-static {}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$sfgetDBG_PRODUCT_DEV()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "SimCheck.disable"

    .line 713
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "AutoWifiController"

    const-string v0, "isSimCardReady returns true for testing"

    .line 714
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 717
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 5

    .line 723
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AutoWifiController"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8c

    packed-switch v0, :pswitch_data_aa

    .line 763
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled message id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 739
    :pswitch_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 742
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceController(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->removeFromInRangedNetworks(Ljava/lang/String;)V

    goto :goto_8b

    .line 731
    :pswitch_41
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_8b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 732
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->isSimCardReady()Z

    move-result p1

    if-eqz p1, :cond_8b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 733
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-nez p1, :cond_8b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 734
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misUltraPowerSaveModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    if-nez p1, :cond_8b

    .line 735
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiScanningModeEnabledState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_8b

    :pswitch_71
    const-string v0, "starting Auto Wi-Fi"

    .line 725
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->checkAndStart()V

    .line 727
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/4 v0, 0x0

    iget p1, p1, Landroid/os/Message;->what:I

    .line 728
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getWhatToString(I)Ljava/lang/String;

    move-result-object p1

    .line 727
    invoke-virtual {p0, v2, v2, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    :cond_8b
    :goto_8b
    :pswitch_8b
    return v2

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_71
        :pswitch_41
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_22
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x64
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method
