.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getSupportedRadioCombinationsMatrixCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 3074
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;)V
    .registers 5

    .line 3077
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3078
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3079
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRadioCombinationMatrix;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3080
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
