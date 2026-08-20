.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemLockoutFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LockoutReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resetting lockout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemLockoutFrameworkImpl"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const-string/jumbo p1, "lockout_reset_user"

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 40
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl$LockoutReceiver;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemLockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    :cond_33
    return-void
.end method
