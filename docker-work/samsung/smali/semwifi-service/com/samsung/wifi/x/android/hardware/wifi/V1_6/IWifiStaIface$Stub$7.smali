.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1462
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;)V
    .registers 5

    .line 1465
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1466
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1467
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerStats;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1468
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
