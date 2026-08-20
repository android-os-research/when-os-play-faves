.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;
.super Ljava/lang/Object;
.source "FingerprintProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChallengeGenerated()V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_13

    return-void

    .line 164
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;)V

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public onChallengeRevoked()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 187
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->-$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/BroadcastReceiver;)V

    :cond_27
    return-void
.end method
