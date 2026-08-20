.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEasySetupWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
