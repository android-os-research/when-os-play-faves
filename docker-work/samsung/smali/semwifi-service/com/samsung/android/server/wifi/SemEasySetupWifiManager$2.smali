.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemEasySetupWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerPackageChangedReceiver()V
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

    .line 156
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEasySetupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 163
    :cond_32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_40
    return-void
.end method
