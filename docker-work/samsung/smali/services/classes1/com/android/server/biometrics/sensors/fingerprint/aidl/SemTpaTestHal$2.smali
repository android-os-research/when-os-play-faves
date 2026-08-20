.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;
.super Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;
.source "SemTpaTestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->getSehFingerprint()Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    new-instance p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    invoke-direct {p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    .line 459
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmRequestActionTable(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    iput p0, p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    return-object p1
.end method
