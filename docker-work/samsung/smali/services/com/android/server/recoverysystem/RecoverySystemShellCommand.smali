.class public Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "RecoverySystemShellCommand.java"


# instance fields
.field public final mService:Landroid/os/IRecoverySystem;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    return-void
.end method


# virtual methods
.method public final clearLskf()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz v1, :cond_1a

    const-string/jumbo v0, "success"

    goto :goto_1c

    :cond_1a
    const-string v0, "failure"

    :goto_1c
    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Clear LSKF for packageName: %s, status: %s\n"

    .line 74
    invoke-virtual {p0, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final isLskfCaptured()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, v0}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    .line 82
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz v1, :cond_1a

    const-string/jumbo v0, "true"

    goto :goto_1c

    :cond_1a
    const-string v0, "false"

    :goto_1c
    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "%s LSKF capture status: %s\n"

    .line 83
    invoke-virtual {p0, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 42
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_82

    goto :goto_3e

    :sswitch_13
    const-string/jumbo v1, "reboot-and-apply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v2

    goto :goto_3f

    :sswitch_1e
    const-string/jumbo v1, "request-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v1, "is-lskf-captured"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v3

    goto :goto_3f

    :sswitch_34
    const-string v1, "clear-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v4

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v1, v0

    :goto_3f
    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_56

    if-eq v1, v3, :cond_51

    if-eq v1, v2, :cond_4c

    .line 52
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 50
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->rebootAndApply()I

    move-result p0

    return p0

    .line 48
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->isLskfCaptured()I

    move-result p0

    return p0

    .line 46
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->clearLskf()I

    move-result p0

    return p0

    .line 44
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->requestLskf()I

    move-result p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5f} :catch_60

    return p0

    :catch_60
    move-exception v1

    .line 55
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0

    nop

    :sswitch_data_82
    .sparse-switch
        -0x2e71d75e -> :sswitch_34
        0x485fa2c6 -> :sswitch_29
        0x4aea45a0 -> :sswitch_1e
        0x53c163d0 -> :sswitch_13
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 101
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Recovery system commands:"

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  request-lskf <package_name>"

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  clear-lskf"

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-lskf-captured <package_name>"

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reboot-and-apply <package_name> <reason>"

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final rebootAndApply()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 92
    :goto_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    if-eqz v1, :cond_24

    const-string/jumbo v0, "success"

    goto :goto_26

    :cond_24
    const-string v0, "failure"

    :goto_26
    aput-object v0, v4, v2

    const-string v0, "%s Reboot and apply status: %s\n"

    .line 94
    invoke-virtual {p0, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final requestLskf()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Landroid/os/IRecoverySystem;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v1

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz v1, :cond_1b

    const-string/jumbo v0, "success"

    goto :goto_1d

    :cond_1b
    const-string v0, "failure"

    :goto_1d
    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Request LSKF for packageName: %s, status: %s\n"

    .line 65
    invoke-virtual {p0, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method
