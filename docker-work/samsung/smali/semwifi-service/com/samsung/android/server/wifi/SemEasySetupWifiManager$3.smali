.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;
.super Landroid/app/HomeVisibilityListener;
.source "SemEasySetupWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerUserActivityReceiver()V
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

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeVisibilityChanged(Z)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHomeActivityVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiEasySetupManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isSufficientPartialScan()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 265
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 266
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    :cond_4a
    return-void
.end method
