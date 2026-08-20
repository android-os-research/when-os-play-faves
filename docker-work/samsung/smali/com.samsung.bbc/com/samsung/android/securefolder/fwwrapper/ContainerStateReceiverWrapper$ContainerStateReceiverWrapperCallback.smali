.class public abstract Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;
.super Ljava/lang/Object;
.source "ContainerStateReceiverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ContainerStateReceiverWrapperCallback"
.end annotation


# instance fields
.field private mContainerStateReceiver:Landroid/os/ContainerStateReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContainerStateReceiver(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)Landroid/os/ContainerStateReceiver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetContainerStateReceiver(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;Landroid/os/ContainerStateReceiver;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->setContainerStateReceiver(Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setContainerStateReceiver(Landroid/os/ContainerStateReceiver;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->mContainerStateReceiver:Landroid/os/ContainerStateReceiver;

    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
