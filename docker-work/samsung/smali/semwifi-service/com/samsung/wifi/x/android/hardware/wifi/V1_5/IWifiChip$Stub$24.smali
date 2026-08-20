.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$createRttController_1_4Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 2869
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;)V
    .registers 5

    .line 2872
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2873
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2874
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_11

    const/4 p2, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->asBinder()Landroid/os/IHwBinder;

    move-result-object p2

    :goto_15
    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 2875
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
