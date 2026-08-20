.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfiguredNetworksChanged(I)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-nez p1, :cond_b

    .line 507
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(III)V

    goto :goto_1b

    .line 510
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 511
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(Landroid/os/Message;J)V

    :goto_1b
    return-void
.end method
