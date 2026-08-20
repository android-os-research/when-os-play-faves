.class public Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper;
.super Ljava/lang/Object;
.source "ContainerStateReceiverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)V
    .registers 3

    .line 14
    new-instance v0, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$1;-><init>(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)V

    .line 83
    invoke-static {p1, v0}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->-$$Nest$msetContainerStateReceiver(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;Landroid/os/ContainerStateReceiver;)V

    .line 84
    invoke-static {p0, v0}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method public static unregister(Landroid/content/Context;Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)V
    .registers 2

    .line 88
    invoke-static {p1}, Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;->-$$Nest$fgetmContainerStateReceiver(Lcom/samsung/android/securefolder/fwwrapper/ContainerStateReceiverWrapper$ContainerStateReceiverWrapperCallback;)Landroid/os/ContainerStateReceiver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
