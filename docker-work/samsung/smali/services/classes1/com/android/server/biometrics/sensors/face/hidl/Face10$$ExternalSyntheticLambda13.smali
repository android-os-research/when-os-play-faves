.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$6:J

.field public final synthetic f$7:Z

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$2:Z

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$3:Landroid/os/IBinder;

    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$6:J

    iput-boolean p10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$7:Z

    iput-object p11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$8:Ljava/lang/String;

    iput p12, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$9:I

    iput p13, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$10:I

    iput-boolean p14, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$11:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$2:Z

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$3:Landroid/os/IBinder;

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$4:J

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-wide v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$6:J

    iget-boolean v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$7:Z

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$8:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$9:I

    iget v12, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$10:I

    iget-boolean v13, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;->f$11:Z

    invoke-static/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->$r8$lambda$UnSTiPPXjlKb30Sr8P6fPP0HN-I(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    return-void
.end method
