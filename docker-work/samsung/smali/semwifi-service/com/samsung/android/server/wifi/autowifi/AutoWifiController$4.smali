.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
