.class Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiAwareStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->start(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemWifiAwareStateManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmDbg(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAvailable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager$2;->this$0:Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;->-$$Nest$fgetmWifiAwareManager(Lcom/samsung/android/server/wifi/aware/SemWifiAwareStateManager;)Landroid/net/wifi/aware/WifiAwareManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void
.end method
