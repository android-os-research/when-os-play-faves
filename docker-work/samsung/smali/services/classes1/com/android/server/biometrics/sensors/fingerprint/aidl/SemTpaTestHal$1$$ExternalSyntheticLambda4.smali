.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1;->$r8$lambda$eisR3VIEWOVERuV_aSOHMonUvl4(Landroid/hardware/biometrics/fingerprint/ISessionCallback;)V

    return-void
.end method
