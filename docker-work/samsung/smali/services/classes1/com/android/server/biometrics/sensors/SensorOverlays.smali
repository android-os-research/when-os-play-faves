.class public final Lcom/android/server/biometrics/sensors/SensorOverlays;
.super Ljava/lang/Object;
.source "SensorOverlays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SensorOverlays"


# instance fields
.field public final mSidefpsController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            ">;"
        }
    .end annotation
.end field

.field public final mUdfpsOverlayController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    .line 57
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public hide(I)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_1c

    .line 103
    :try_start_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/ISidefpsController;->hide(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v2, "Remote exception when hiding the side-fps overlay"

    .line 105
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 111
    :try_start_24
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p0

    const-string p1, "Remote exception when hiding the UDFPS overlay"

    .line 113
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method

.method public ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 125
    :try_start_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string p1, "SensorOverlays"

    const-string v0, "Remote exception using overlay controller"

    .line 127
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
            "*>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_1c

    .line 71
    :try_start_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/ISidefpsController;->show(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v0

    const-string v2, "Remote exception when showing the side-fps overlay"

    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 78
    new-instance v7, Lcom/android/server/biometrics/sensors/SensorOverlays$1;

    invoke-direct {v7, p0, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays$1;-><init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    .line 87
    :try_start_29
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 88
    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v3

    move v5, p1

    move v6, p2

    .line 87
    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception p0

    const-string p1, "Remote exception when showing the UDFPS overlay"

    .line 90
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    :goto_42
    return-void
.end method
