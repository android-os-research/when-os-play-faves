.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidNoCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4859
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 4862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0, v0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 3

    .line 4872
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4874
    iget p0, p1, Landroid/os/Message;->what:I

    packed-switch p0, :pswitch_data_e

    return v0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_data_e
    .packed-switch 0x21130
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
