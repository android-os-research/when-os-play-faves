.class Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;
.super Ljava/lang/Object;
.source "SemWifiManagerProxy.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->lambda$initialize$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(II)V
    .registers 3

    .line 261
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monWifiApStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 262
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "received ap state changed event, state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApStateByName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiManagerProxy"

    .line 263
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method
