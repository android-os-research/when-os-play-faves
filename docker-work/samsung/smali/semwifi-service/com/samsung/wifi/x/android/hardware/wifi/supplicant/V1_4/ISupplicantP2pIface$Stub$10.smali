.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;
.super Ljava/lang/Object;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 2671
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;J)V
    .registers 6

    .line 2674
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2675
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2676
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2, p3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 2677
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
