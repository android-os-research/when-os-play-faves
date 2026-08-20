.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;
.super Landroid/os/Handler;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/Looper;)V
    .registers 3

    .line 1596
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1599
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "Face10"

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    .line 1611
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_21
    const-string/jumbo p1, "handleMessage: MSG_PROXIMITY_SENSOR_ERROR"

    .line 1606
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    const/16 p1, 0x16

    const/16 v0, 0x3e9

    invoke-static {p0, p1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    goto :goto_3c

    :cond_31
    const-string/jumbo p1, "handleMessage : MSG_INACTIVITY_TIMER_EXPIRED(TIMEOUT)"

    .line 1601
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl$1;->this$1:Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monAuthenticatedTimeout(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    :goto_3c
    return-void
.end method
