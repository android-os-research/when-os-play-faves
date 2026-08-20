.class public final Lcom/android/server/accounts/AccountManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AccountManagerServiceShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const-string v0, "get-bind-instant-service-allowed"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p0, -0x1

    return p0

    .line 46
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->runSetBindInstantServiceAllowed()I

    move-result p0

    return p0

    .line 43
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->runGetBindInstantServiceAllowed()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 103
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Account manager service commands:"

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)] true|false "

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set whether binding to services provided by instant apps is allowed."

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-bind-instant-service-allowed [--user <USER_ID> (current user if not specified)]"

    .line 110
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Get whether binding to services provided by instant apps is allowed."

    .line 112
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseUserId()Ljava/lang/Integer;
    .registers 5

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string v1, "--user"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_23

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "USER_ALL not supported. Specify a user."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v2

    :cond_30
    if-gez v0, :cond_4b

    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v2

    .line 91
    :cond_4b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 94
    :cond_50
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-object v2

    .line 98
    :cond_69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final runGetBindInstantServiceAllowed()I
    .registers 3

    .line 53
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 57
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getBindInstantServiceAllowed(I)Z

    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetBindInstantServiceAllowed()I
    .registers 4

    .line 63
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->parseUserId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 67
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    .line 69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no true/false specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 72
    :cond_18
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->mService:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 72
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->setBindInstantServiceAllowed(IZ)V

    const/4 p0, 0x0

    return p0
.end method
