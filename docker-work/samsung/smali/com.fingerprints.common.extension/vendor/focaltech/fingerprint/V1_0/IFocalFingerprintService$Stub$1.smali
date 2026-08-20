.class Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;
.super Ljava/lang/Object;
.source "IFocalFingerprintService.java"

# interfaces
.implements Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$executeCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub;

    .line 538
    iput-object p1, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->this$0:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub;

    iput-object p2, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "ret_code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p2, "ret_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 542
    iget-object v0, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 543
    iget-object v0, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 544
    iget-object v0, p0, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 545
    return-void
.end method
