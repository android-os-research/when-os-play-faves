.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSmartNetworkCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->-$$Nest$mupdateSwitchState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    return-void
.end method
