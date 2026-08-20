.class public final synthetic Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->$r8$lambda$1kLIM1F6HcwbWoaFkB4V-mC_y5I(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
