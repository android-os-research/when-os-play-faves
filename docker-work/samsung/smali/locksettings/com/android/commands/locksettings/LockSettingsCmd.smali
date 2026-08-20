.class public final Lcom/android/commands/locksettings/LockSettingsCmd;
.super Lcom/android/internal/os/BaseCommand;
.source "LockSettingsCmd.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/android/commands/locksettings/LockSettingsCmd;

    invoke-direct {v0}, Lcom/android/commands/locksettings/LockSettingsCmd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/commands/locksettings/LockSettingsCmd;->run([Ljava/lang/String;)V

    .line 33
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

    .line 42
    nop

    .line 43
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 44
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    .line 45
    invoke-virtual {p0}, Lcom/android/commands/locksettings/LockSettingsCmd;->getRawArgs()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/ShellCallback;

    invoke-direct {v6}, Landroid/os/ShellCallback;-><init>()V

    new-instance v7, Lcom/android/commands/locksettings/LockSettingsCmd$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/commands/locksettings/LockSettingsCmd$1;-><init>(Lcom/android/commands/locksettings/LockSettingsCmd;Landroid/os/Handler;)V

    .line 44
    invoke-interface/range {v1 .. v7}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 46
    return-void
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 37
    const-string v0, "help"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/commands/locksettings/LockSettingsCmd;->main([Ljava/lang/String;)V

    .line 38
    return-void
.end method
