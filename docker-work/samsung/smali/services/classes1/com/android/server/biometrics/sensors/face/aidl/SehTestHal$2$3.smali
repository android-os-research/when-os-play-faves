.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "SehTestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

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
