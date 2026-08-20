.class public final Lcom/android/server/print/PrintShellCommand;
.super Landroid/os/ShellCommand;
.source "PrintShellCommand.java"


# instance fields
.field public final mService:Landroid/print/IPrintManager;


# direct methods
.method public constructor <init>(Landroid/print/IPrintManager;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const-string v0, "get-bind-instant-service-allowed"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->runSetBindInstantServiceAllowed()I

    move-result p0

    return p0

    .line 45
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->runGetBindInstantServiceAllowed()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 101
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Print service commands:"

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-bind-instant-service-allowed [--user <USER_ID>] true|false "

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set whether binding to print services provided by instant apps is allowed."

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-bind-instant-service-allowed [--user <USER_ID>]"

    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Get whether binding to print services provided by instant apps is allowed."

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseUserId()Ljava/lang/Integer;
    .registers 4

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v1, "--user"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_35
    const/4 p0, 0x0

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final runGetBindInstantServiceAllowed()I
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/print/IPrintManager;->getBindInstantServiceAllowed(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_22
    const/4 p0, 0x0

    return p0
.end method

.method public final runSetBindInstantServiceAllowed()I
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/android/server/print/PrintShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 73
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no true/false specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 79
    :cond_18
    :try_start_18
    iget-object p0, p0, Lcom/android/server/print/PrintShellCommand;->mService:Landroid/print/IPrintManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/print/IPrintManager;->setBindInstantServiceAllowed(IZ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    .line 81
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    const/4 p0, 0x0

    return p0
.end method
