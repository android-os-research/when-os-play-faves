.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/face/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;ILandroid/hardware/face/Face;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/face/Face;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$1:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/face/Face;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->$r8$lambda$1LLeWbvL3B2RFB0tgTCpFf1tFPo(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;ILandroid/hardware/face/Face;)V

    return-void
.end method
