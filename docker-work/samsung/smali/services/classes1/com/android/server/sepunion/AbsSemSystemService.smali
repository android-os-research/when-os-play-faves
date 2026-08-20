.class public interface abstract Lcom/android/server/sepunion/AbsSemSystemService;
.super Ljava/lang/Object;
.source "AbsSemSystemService.java"


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
.end method

.method public abstract onBootPhase(I)V
.end method

.method public abstract onCleanupUser(I)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onStartUser(I)V
.end method

.method public abstract onStopUser(I)V
.end method

.method public abstract onSwitchUser(I)V
.end method

.method public abstract onUnlockUser(I)V
.end method
