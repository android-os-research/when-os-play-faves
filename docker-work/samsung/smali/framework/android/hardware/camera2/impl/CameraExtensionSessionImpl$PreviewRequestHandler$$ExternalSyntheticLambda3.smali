.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$discardPendingRepeatingResults$6$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V

    return-void
.end method
