.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;
.super Landroid/view/OrientationEventListener;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

.field public final synthetic val$this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;


# direct methods
.method public static synthetic $r8$lambda$zn3r537AfipmjuLO6Whx0NqO0f8(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->lambda$onOrientationChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/content/Context;ILcom/android/server/biometrics/sensors/face/hidl/Face10;)V
    .registers 5

    .line 1622
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->val$this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$0()V
    .registers 2

    .line 1632
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonSetRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3

    .line 1625
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 1628
    :cond_9
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 1629
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I

    move-result v0

    if-eq p1, v0, :cond_3c

    .line 1630
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmLastRotation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    .line 1631
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1632
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    return-void
.end method
