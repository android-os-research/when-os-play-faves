.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;
.super Landroid/os/Handler;
.source "SemWifiApTimeOutImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->registerSoftApCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Landroid/os/Looper;)V
    .registers 3

    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const-string v0, "SemWifiApTimeOutImpl"

    const-string v1, "Received timeout"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d6

    .line 226
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object p1

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v2, "MobileAPCloseService"

    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 230
    :try_start_22
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_3b

    :catch_26
    move-exception v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot acquire wake lock ~~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v1

    if-nez v1, :cond_4c

    .line 236
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mgetConnectedDevicesNum(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 237
    :cond_4c
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "TMO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5f

    const-string v2, "NEWCO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_5f
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Z

    move-result v2

    if-nez v2, :cond_92

    :cond_67
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmTimeoutvalue(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v2

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmWifiApState(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_92

    const-string v2, "Received timeout event,disabling hotspot"

    .line 239
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_92
    const-string v2, "VZW"

    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 243
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x1040f56

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_aa
    const-string v2, "ATT"

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 246
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->showTimeoutNotification(Landroid/content/Context;)V

    :cond_bb
    if-eqz p1, :cond_d6

    .line 250
    :try_start_bd
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_d6

    :catch_c1
    move-exception p0

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot release wake lock ~~ "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    :goto_d6
    return-void
.end method
