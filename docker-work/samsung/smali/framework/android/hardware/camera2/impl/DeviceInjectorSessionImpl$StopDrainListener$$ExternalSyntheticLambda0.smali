.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;->lambda$onDrained$0$android-hardware-camera2-impl-DeviceInjectorSessionImpl$StopDrainListener()V

    return-void
.end method
