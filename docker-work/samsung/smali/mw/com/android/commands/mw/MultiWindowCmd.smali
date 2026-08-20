.class public Lcom/android/commands/mw/MultiWindowCmd;
.super Lcom/android/internal/os/BaseCommand;
.source "MultiWindowCmd.java"


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell mw [cmd] [arg]\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/android/commands/mw/MultiWindowCmd;

    invoke-direct {v0}, Lcom/android/commands/mw/MultiWindowCmd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/mw/MultiWindowCmd;->run([Ljava/lang/String;)V

    .line 44
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
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getMultiTaskingBinder()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    .line 55
    .local v0, "multiTaskingBinder":Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    if-eqz v0, :cond_27

    .line 59
    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 60
    invoke-virtual {p0}, Lcom/android/commands/mw/MultiWindowCmd;->getRawArgs()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/ShellCallback;

    invoke-direct {v6}, Landroid/os/ShellCallback;-><init>()V

    new-instance v7, Lcom/android/commands/mw/MultiWindowCmd$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/commands/mw/MultiWindowCmd$1;-><init>(Lcom/android/commands/mw/MultiWindowCmd;Landroid/os/Handler;)V

    .line 59
    invoke-interface/range {v1 .. v7}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 62
    return-void

    .line 56
    :cond_27
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/util/AndroidException;

    const-string v2, "Can\'t connect to MultiTaskingManager"

    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 48
    const-string v0, "usage: adb shell mw [cmd] [arg]\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    return-void
.end method
