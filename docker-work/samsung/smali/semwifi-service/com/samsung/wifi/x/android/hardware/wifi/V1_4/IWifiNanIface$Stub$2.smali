.class Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;
.super Ljava/lang/Object;
.source "IWifiNanIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1059
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Ljava/lang/String;)V
    .registers 5

    .line 1062
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1064
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
