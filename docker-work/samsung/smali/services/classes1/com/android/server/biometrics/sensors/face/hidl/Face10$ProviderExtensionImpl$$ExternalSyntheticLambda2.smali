.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public final synthetic f$1:Landroid/hardware/face/Face;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/face/Face;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/face/Face;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->$r8$lambda$H93wPyD2s5MOpv3hJZfCURpcvUo(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/hardware/face/Face;I)V

    return-void
.end method
