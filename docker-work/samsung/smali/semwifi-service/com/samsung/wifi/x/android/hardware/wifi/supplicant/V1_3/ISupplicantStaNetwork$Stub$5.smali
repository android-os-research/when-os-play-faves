.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getBssidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 3890
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .registers 5

    .line 3893
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3894
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3896
    new-instance p1, Landroid/os/HwBlob;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    if-eqz p2, :cond_26

    .line 3901
    array-length v1, p2

    if-ne v1, v0, :cond_26

    const-wide/16 v0, 0x0

    .line 3905
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 3908
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3910
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$5;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void

    .line 3902
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
