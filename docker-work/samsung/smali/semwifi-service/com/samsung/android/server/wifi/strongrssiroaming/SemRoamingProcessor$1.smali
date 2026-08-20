.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "SemRoamingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    if-eqz p2, :cond_10

    const/4 v1, 0x1

    :cond_10
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$fputmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;Z)V

    .line 104
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mIsBluetoothConnected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
