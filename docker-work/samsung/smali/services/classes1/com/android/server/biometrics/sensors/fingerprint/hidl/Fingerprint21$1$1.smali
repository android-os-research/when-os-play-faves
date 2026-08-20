.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;
.super Landroid/content/BroadcastReceiver;
.source "Fingerprint21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->onChallengeGenerated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BroadCastReceiverForEnroll.onReceive : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Fingerprint21"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmPowerManager(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/PowerManager;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 194
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    iget-object v0, p1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p1

    iget v1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 194
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    :cond_4f
    return-void
.end method
