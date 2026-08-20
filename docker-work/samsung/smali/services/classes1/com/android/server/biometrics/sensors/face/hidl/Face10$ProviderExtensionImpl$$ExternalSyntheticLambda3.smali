.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/face/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/face/Face;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$$ExternalSyntheticLambda3;->f$2:Landroid/hardware/face/Face;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->$r8$lambda$IkoUcjZzNVhph8m3Ga_xMNtYFVc(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;ILandroid/hardware/face/Face;)V

    return-void
.end method
