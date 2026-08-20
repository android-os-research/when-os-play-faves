.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;
.super Ljava/lang/Object;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$getClientListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 1112
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->this$0:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub;

    iput-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1116
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1118
    new-instance p1, Landroid/os/HwBlob;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 1120
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v2, 0x8

    .line 1121
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1122
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1123
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v0, 0x6

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_27
    if-ge v1, v0, :cond_46

    mul-int/lit8 v3, v1, 0x6

    int-to-long v3, v3

    .line 1127
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_3e

    .line 1129
    array-length v6, v5

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3e

    .line 1133
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1130
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    const-wide/16 v0, 0x0

    .line 1137
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1139
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1141
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pNetwork$Stub$9;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
