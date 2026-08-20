.class public final Lcom/android/server/apphibernation/AppHibernationShellCommand;
.super Landroid/os/ShellCommand;
.source "AppHibernationShellCommand.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final GLOBAL_OPT:Ljava/lang/String; = "--global"

.field public static final SUCCESS:I = 0x0

.field public static final USER_OPT:Ljava/lang/String; = "--user"


# instance fields
.field public final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method public constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

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
    const-string/jumbo v0, "set-state"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "get-state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->runGetState()I

    move-result p0

    return p0

    .line 45
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->runSetState()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 3

    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "App hibernation (app_hibernation) commands: "

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-state [--user USER_ID] [--global] PACKAGE true|false"

    .line 127
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the hibernation state of the package to value specified. Optionally"

    .line 128
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    may specify a user id or set global hibernation state."

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get-state [--user USER_ID] [--global] PACKAGE"

    .line 131
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the hibernation state of the package. Optionally may specify a user"

    .line 132
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    id or request global hibernation state."

    .line 133
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetState()I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    move v2, v0

    .line 95
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    const-string v4, "--global"

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 104
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_3b
    const/4 v2, 0x1

    goto :goto_3

    .line 108
    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: No package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_4e
    if-eqz v2, :cond_57

    .line 114
    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v1, v3}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5d

    :cond_57
    iget-object v2, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v1

    .line 115
    :goto_5d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V

    return v0
.end method

.method public final runSetState()I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    move v2, v0

    .line 57
    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    const-string v4, "--global"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 60
    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_3b
    const/4 v2, 0x1

    goto :goto_3

    .line 70
    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_4e

    .line 72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no package specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 76
    :cond_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5e

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: No state to set specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    .line 81
    :cond_5e
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v2, :cond_6a

    .line 84
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    goto :goto_6f

    .line 86
    :cond_6a
    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationShellCommand;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    :goto_6f
    return v0
.end method
