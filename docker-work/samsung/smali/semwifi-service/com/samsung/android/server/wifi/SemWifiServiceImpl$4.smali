.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "rebroadcastOnUnlock"

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    const-string p1, "ss"

    .line 471
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 472
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "SemWifiService"

    const/4 v2, 0x1

    if-eqz p2, :cond_2f

    .line 473
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    const-string p1, "resetting networks because SIM was removed"

    .line 474
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setSimState(Z)V

    goto :goto_4a

    :cond_2f
    const-string p2, "LOADED"

    .line 476
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 477
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fputmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V

    const-string p1, "resetting networks because SIM was loaded"

    .line 478
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setSimState(Z)V

    :cond_4a
    :goto_4a
    return-void
.end method
