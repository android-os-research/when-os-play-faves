.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$1:[I

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->$r8$lambda$d0oaYNCEQfLCwIFTXN8hrk8_yMk(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V

    return-void
.end method
