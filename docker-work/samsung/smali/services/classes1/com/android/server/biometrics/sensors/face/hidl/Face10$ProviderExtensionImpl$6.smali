.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;
.super Landroid/content/BroadcastReceiver;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->registerBroadcastEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;


# direct methods
.method public static synthetic $r8$lambda$Qzb-9Vd9ebdeTJsd3EUAZF9nG-4(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V
    .registers 2

    .line 2692
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 2

    .line 2700
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    .line 2701
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonCancel(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2695
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBroadCastReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Face10"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_37

    .line 2699
    :cond_27
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$6;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_37
    return-void
.end method
