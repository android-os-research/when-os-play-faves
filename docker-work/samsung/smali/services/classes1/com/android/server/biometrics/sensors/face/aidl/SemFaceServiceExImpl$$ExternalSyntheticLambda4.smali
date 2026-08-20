.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

.field public final synthetic f$1:Landroid/hardware/face/Face;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/hardware/face/Face;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/face/Face;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/face/Face;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->$r8$lambda$GRbCSMsNN4stP9Cxc_kaO8eZ-Mo(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/hardware/face/Face;I)V

    return-void
.end method
