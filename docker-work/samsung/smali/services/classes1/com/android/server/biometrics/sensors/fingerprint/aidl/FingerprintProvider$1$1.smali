.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->onChallengeGenerated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadCastReceiverForEnroll.onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmPowerManager(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/os/PowerManager;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_79

    const/4 p1, 0x0

    .line 171
    :goto_37
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_79

    .line 172
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 173
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object v0, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;

    move-result-object p2

    .line 174
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getRecentGeneratedChallenge()J

    move-result-wide v5

    .line 173
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    :cond_79
    return-void
.end method
