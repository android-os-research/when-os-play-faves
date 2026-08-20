.class Lcom/samsung/android/server/wifi/SemApeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;)V
    .registers 2

    .line 1352
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent received action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_c8

    :goto_26
    move p1, v2

    goto :goto_48

    :sswitch_28
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_26

    :cond_31
    move p1, v1

    goto :goto_48

    :sswitch_33
    const-string v0, "com.samsung.android.wifi.SET_APE_STATIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_26

    :cond_3c
    move p1, v3

    goto :goto_48

    :sswitch_3e
    const-string v0, "com.samsung.android.wifi.ENABLE_APE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_26

    :cond_47
    move p1, v4

    :goto_48
    packed-switch p1, :pswitch_data_d6

    goto/16 :goto_c7

    :pswitch_4d
    const-string p1, "android.intent.extra.user_handle"

    .line 1386
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1387
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1, v4}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c7

    .line 1380
    :pswitch_62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const-string v0, "bandwidth"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 1381
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set static bandwidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmStaticBandwidth(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    goto :goto_c7

    :pswitch_88
    const-string p1, "enable"

    .line 1361
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_91

    goto :goto_92

    :cond_91
    move v3, v4

    :goto_92
    if-eqz v3, :cond_b6

    const-string p1, "uid"

    .line 1364
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "package"

    .line 1365
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 1366
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p1, :cond_c7

    .line 1368
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    invoke-virtual {p0, v4, p1, p2, v0}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c7

    .line 1372
    :cond_b6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_c7

    .line 1373
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$1;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmApeHandler(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessage(I)Z

    :cond_c7
    :goto_c7
    return-void

    :sswitch_data_c8
    .sparse-switch
        -0x1083e62d -> :sswitch_3e
        0x30f8510d -> :sswitch_33
        0x392cb822 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_88
        :pswitch_62
        :pswitch_4d
    .end packed-switch
.end method
