.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$onInjectionPendingStopped$5$android-hardware-camera2-impl-DeviceInjectorSessionImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
