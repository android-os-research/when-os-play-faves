.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.sec.android.application.csc.chameleon_wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$msetChameleonConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;Landroid/content/Intent;)V

    :cond_11
    return-void
.end method
