.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

.field public final synthetic f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$y0r6MAtTw8JYmWW9UCRe53GuZ-k(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method
