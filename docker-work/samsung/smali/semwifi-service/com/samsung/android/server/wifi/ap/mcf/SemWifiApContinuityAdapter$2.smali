.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerMcfBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.mcfds.SERVICE_STARTED"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "MHSMcf:Adapter"

    if-eqz p2, :cond_35

    const-string p1, "MCF_SERVICE_STARTED"

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$mgetWifiApUtil(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityUtil;->hasSamsungAccount()Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "SamsungAccount Already SignedIn,trying to bind"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->-$$Nest$fputisSamsungAccountSignedIn(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;Z)V

    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    goto :goto_42

    :cond_35
    const-string p0, "com.samsung.android.mcfds.SERVICE_STOPPED"

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "MCF_SERVICE_STOPPED"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method
