.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChallengeGenerated()V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_13

    return-void

    .line 187
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;)V

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {v1, v0, v2, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public onChallengeRevoked()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmIsEnrollSession(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 207
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fputmBroadCastReceiverForEnroll(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/content/BroadcastReceiver;)V

    :cond_23
    return-void
.end method
