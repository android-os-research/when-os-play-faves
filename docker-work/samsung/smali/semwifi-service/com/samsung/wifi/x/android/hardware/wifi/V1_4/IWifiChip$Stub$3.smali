.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;
.super Ljava/lang/Object;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1468
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;)V"
        }
    .end annotation

    .line 1471
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1472
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1473
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$ChipMode;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1474
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
