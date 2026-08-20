.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApContinuityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->registerBroadcast()V
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

    .line 80
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    goto :goto_29

    :cond_17
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$1;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter;->getHandler()Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityAdapter$AutoHotspotHandler;->sendEmptyMessage(I)Z

    :cond_29
    :goto_29
    return-void
.end method
