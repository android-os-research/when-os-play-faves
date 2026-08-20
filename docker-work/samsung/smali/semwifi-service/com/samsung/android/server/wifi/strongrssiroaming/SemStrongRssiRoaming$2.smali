.class Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;
.super Landroid/content/BroadcastReceiver;
.source "SemStrongRssiRoaming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent getAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.wifi.APE_INFO"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "msg_type"

    .line 251
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "REALTIME_APP_INFO"

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 p1, 0x0

    const-string v0, "enable"

    .line 252
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    move-result-object p0

    const/16 p2, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8c

    :cond_4d
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendEmptyMessage(I)Z

    goto :goto_8c

    :cond_61
    const-string v0, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;->sendEmptyMessage(I)Z

    goto :goto_8c

    :cond_75
    const-string v0, "com.samsung.android.StrongRssiRoaming.POLLING_RETRY_INTERVAL"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;->this$0:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fgetmPollingRetryIntervalMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I

    move-result p1

    const-string v0, "PollingRetryIntervalMs"

    .line 260
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->-$$Nest$fputmPollingRetryIntervalMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    :cond_8c
    :goto_8c
    return-void
.end method
