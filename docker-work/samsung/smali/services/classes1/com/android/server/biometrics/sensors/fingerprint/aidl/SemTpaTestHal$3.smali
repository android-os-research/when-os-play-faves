.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "SemTpaTestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->createICancellationSignal(Landroid/os/CancellationSignal;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

.field public final synthetic val$cs:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;Landroid/os/CancellationSignal;)V
    .registers 3

    .line 490
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;->val$cs:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 493
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$3;->val$cs:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "a6d4d8e7b26408ab30a3d87cf6b7ffd9e067e4d8"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method
