.class Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;
.super Landroid/os/ContainerStateReceiver;
.source "ContainerStateReceiverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper;->register(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 52
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 56
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 28
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 32
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 16
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 48
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 68
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 24
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 44
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 36
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 20
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 72
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 76
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 60
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    .line 64
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .registers 5

    .line 80
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V

    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    .line 40
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;->val$receiver:Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
