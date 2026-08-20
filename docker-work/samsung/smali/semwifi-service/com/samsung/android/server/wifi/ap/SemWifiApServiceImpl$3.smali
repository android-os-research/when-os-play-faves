.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "mode"

    const/4 v0, -0x1

    .line 231
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_32

    const/16 p2, 0x40

    if-eq p1, p2, :cond_22

    const/16 p2, 0x80

    if-eq p1, p2, :cond_12

    goto :goto_42

    .line 243
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 244
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mchangeHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    goto :goto_42

    .line 239
    :cond_22
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mrunHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    goto :goto_42

    .line 234
    :cond_32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputmWlanAdvancedDebugState(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mstopHotspotDebugLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mresetHotspotAntenna(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    :goto_42
    return-void
.end method
