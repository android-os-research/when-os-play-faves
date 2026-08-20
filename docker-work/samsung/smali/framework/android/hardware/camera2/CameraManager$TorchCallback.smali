.class public abstract Landroid/hardware/camera2/CameraManager$TorchCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TorchCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1628
    return-void
.end method

.method public whitelist onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1611
    return-void
.end method

.method public whitelist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newStrengthLevel"    # I

    .line 1646
    return-void
.end method
