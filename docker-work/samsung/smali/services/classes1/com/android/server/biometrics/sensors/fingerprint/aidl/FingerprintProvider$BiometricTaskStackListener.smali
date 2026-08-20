.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;
.super Landroid/app/TaskStackListener;
.source "FingerprintProvider.java"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BiometricTaskStackListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public static synthetic $r8$lambda$9fLmo3e_FDrzGEzxpjNLNXsXXZg(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->lambda$onTaskStackChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    return-void
.end method

.method private synthetic lambda$onTaskStackChanged$0()V
    .registers 7

    const/4 v0, 0x0

    .line 200
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 201
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v1

    .line 203
    instance-of v2, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-nez v2, :cond_3c

    .line 204
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task stack changed for client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 207
    :cond_3c
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;

    move-result-object v2

    .line 208
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_aa

    .line 213
    :cond_5d
    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_aa

    .line 218
    :cond_67
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 219
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isAlreadyDone()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 220
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping background authentication, currentClient: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getScheduler()Lcom/android/server/biometrics/sensors/fingerprint/SemFpUserAwareScheduler;

    move-result-object v2

    .line 223
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v4

    .line 222
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    :cond_aa
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_ae
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$mgetTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForegroundActivitiesChanged: pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", foregroundActivities = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->onTaskStackChanged()V

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
