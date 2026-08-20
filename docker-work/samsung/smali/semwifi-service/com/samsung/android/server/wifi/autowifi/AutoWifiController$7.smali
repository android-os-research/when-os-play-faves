.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;
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

    .line 335
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const-string v1, "boot_completed"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
