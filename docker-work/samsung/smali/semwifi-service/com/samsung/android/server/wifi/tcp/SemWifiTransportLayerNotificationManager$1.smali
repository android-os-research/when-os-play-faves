.class Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiTransportLayerNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->setBroadCastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V
    .registers 2

    .line 269
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 274
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 275
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f73

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040f68

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fputmChannelNameGeneral(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 281
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)Landroid/content/Context;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040f67

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$fputmChannelNameEmergency(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->-$$Nest$minitNotificationChannel(Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;)V

    :cond_8a
    return-void
.end method
