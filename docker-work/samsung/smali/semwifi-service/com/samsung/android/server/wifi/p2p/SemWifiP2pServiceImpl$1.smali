.class Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;
.super Landroid/os/CountDownTimer;
.source "SemWifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->handleBootCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;JJ)V
    .registers 6

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$misAwareOnOrP2pOn(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result v0

    const-string v1, "SemWifiP2pService"

    if-nez v0, :cond_16

    const-string v0, "mOpenWifiScanTimer finished. open"

    .line 191
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$msetLegacyScanningEnableForced(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;Z)V

    goto :goto_1b

    :cond_16
    const-string p0, "mOpenWifiScanTimer finished. do nothing"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method

.method public onTick(J)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$misAwareOnOrP2pOn(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "SemWifiP2pService"

    const-string p2, "mOpenWifiScanTimer canceled"

    .line 184
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl$1;->this$0:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;->-$$Nest$fgetmOpenWifiScanTimer(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pServiceImpl;)Landroid/os/CountDownTimer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_18
    return-void
.end method
