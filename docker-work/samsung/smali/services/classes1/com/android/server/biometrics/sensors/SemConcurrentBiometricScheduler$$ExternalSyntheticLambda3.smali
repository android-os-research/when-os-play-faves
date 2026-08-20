.class public final synthetic Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->reset()V

    return-void
.end method
