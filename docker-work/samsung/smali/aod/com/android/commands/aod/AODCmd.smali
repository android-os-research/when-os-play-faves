.class public final Lcom/android/commands/aod/AODCmd;
.super Lcom/android/internal/os/BaseCommand;
.source "AODCmd.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: aod tsp [ACTION_INFO] [-x X] [-y Y]\n\nflags: \n       -user USER_ID: specify the user, default value is current user\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/android/commands/aod/AODCmd;

    invoke-direct {v0}, Lcom/android/commands/aod/AODCmd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/aod/AODCmd;->run([Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    const-string v0, "AODManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    .line 55
    .local v0, "aodManager":Lcom/samsung/android/aod/IAODManager;
    if-eqz v0, :cond_29

    .line 59
    invoke-interface {v0}, Lcom/samsung/android/aod/IAODManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 60
    invoke-virtual {p0}, Lcom/android/commands/aod/AODCmd;->getRawArgs()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/ShellCallback;

    invoke-direct {v6}, Landroid/os/ShellCallback;-><init>()V

    new-instance v7, Lcom/android/commands/aod/AODCmd$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/commands/aod/AODCmd$1;-><init>(Lcom/android/commands/aod/AODCmd;Landroid/os/Handler;)V

    .line 59
    invoke-interface/range {v1 .. v7}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 61
    return-void

    .line 56
    :cond_29
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to aod manager; is the system running?"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 49
    const-string v0, "usage: aod tsp [ACTION_INFO] [-x X] [-y Y]\n\nflags: \n       -user USER_ID: specify the user, default value is current user\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void
.end method
