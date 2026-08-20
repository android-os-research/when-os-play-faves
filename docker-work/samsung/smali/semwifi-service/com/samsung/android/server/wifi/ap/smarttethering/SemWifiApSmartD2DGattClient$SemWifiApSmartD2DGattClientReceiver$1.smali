.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver$1;
.super Ljava/lang/Object;
.source "SemWifiApSmartD2DGattClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 281
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$SemWifiApSmartD2DGattClientReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;ILjava/lang/String;)V

    return-void
.end method
