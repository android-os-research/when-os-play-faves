.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;
.super Ljava/lang/Object;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1649
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1652
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1654
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 1655
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
