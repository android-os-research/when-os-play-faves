.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;IIB)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$2:I

    iput-byte p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$3:B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$2:I

    iget-byte p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;->f$3:B

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->$r8$lambda$GMCn1rTP2wH-Ycx7mbEVQdHzHmk(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;IIB)V

    return-void
.end method
