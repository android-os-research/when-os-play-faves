.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver$1;
.super Ljava/lang/Object;
.source "SemWifiApSmartBleScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerSamsungAccountSiginReceiver;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateFamilyDetailsUsingLocalGroupSmartTetheringApk()I

    :cond_15
    return-void
.end method
