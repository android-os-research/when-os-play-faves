.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->$r8$lambda$xOAz37LYlBYYknSGVoN6MfL6T8Q(Ljava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    return-void
.end method
