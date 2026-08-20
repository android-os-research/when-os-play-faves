.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApContinuityClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fputmIntentWifiState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;I)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmIntentWifiState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmIntentWifiState(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_22

    .line 82
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$2;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$mclearVariables(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)V

    :cond_22
    return-void
.end method
