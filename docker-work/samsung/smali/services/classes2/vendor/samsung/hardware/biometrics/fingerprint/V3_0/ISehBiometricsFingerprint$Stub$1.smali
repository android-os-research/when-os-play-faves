.class public Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;
.super Ljava/lang/Object;
.source "ISehBiometricsFingerprint.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$sehRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;

.field public final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method public constructor <init>(Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;Landroid/os/HwParcel;)V
    .registers 3

    .line 895
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->this$0:Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 899
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 900
    iget-object p1, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 901
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
