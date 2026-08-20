.class Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;
.super Landroid/os/Handler;
.source "SemEasySetupWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasySetupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Landroid/os/Looper;)V
    .registers 3

    .line 365
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 366
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result v0

    const-string v1, "SemWifiEasySetupManager"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasySetupHandler msg.what : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_e2

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined case : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e0

    .line 406
    :pswitch_3e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 407
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mcheckEasySetupNetwork(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V

    goto/16 :goto_e0

    .line 403
    :pswitch_49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    goto/16 :goto_e0

    .line 394
    :pswitch_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 395
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.oneconnect"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 398
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmEasySetupSettings(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmIsEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V

    goto :goto_e0

    .line 382
    :pswitch_73
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 384
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_e0

    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p1

    if-eqz p1, :cond_94

    const-string p1, "UnLocked"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p1

    if-eqz p1, :cond_e0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p1

    if-eqz p1, :cond_e0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isHomeActivityVisible()Z

    move-result p1

    if-eqz p1, :cond_e0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 387
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isSufficientPartialScan()Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 388
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 389
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    goto :goto_e0

    .line 376
    :pswitch_c6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V

    .line 377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$mresetPartialScanTimerWhenScreenOnOff(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 378
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    goto :goto_e0

    .line 373
    :pswitch_da
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;->this$0:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->-$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V

    :cond_e0
    :goto_e0
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_da
        :pswitch_c6
        :pswitch_73
        :pswitch_50
        :pswitch_49
        :pswitch_3e
    .end packed-switch
.end method
