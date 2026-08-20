.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$getGroupCipher_1_3Callback;


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

    .line 4782
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .registers 5

    .line 4785
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 4786
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 4787
    iget-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 4788
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaNetwork$Stub$43;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
