.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:Z

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:Z

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$6:I

    iput-wide p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$7:J

    iput-boolean p11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$8:Z

    iput-object p12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$9:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$10:I

    iput p14, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$11:I

    iput-boolean p15, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$12:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$4:J

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$6:I

    iget-wide v8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$7:J

    iget-boolean v10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$8:Z

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$9:Ljava/lang/String;

    iget v12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$10:I

    iget v13, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$11:I

    iget-boolean v14, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda0;->f$12:Z

    invoke-static/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->$r8$lambda$WvcNbwuLBZ3qI2h_fwT_Lfkq8oQ(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;ZILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IIZ)V

    return-void
.end method
