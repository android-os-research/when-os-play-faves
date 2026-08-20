.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->setCancellationSignal(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

.field public final synthetic val$requestId:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;J)V
    .registers 5

    .line 2711
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->val$requestId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 6

    .line 2714
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$7;->val$requestId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->cancelAuthentication(ILandroid/os/IBinder;J)V

    return-void
.end method
