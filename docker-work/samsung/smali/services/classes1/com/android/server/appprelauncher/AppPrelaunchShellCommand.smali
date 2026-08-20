.class public Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;
.super Landroid/os/ShellCommand;
.source "AppPrelaunchShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;
    }
.end annotation


# instance fields
.field public final mService:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    return-void
.end method


# virtual methods
.method public kill()I
    .registers 7

    const/4 v0, 0x1

    .line 135
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->parseOptions()Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_62

    .line 141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget v5, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    invoke-virtual {v3, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->killApp(I)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 145
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was not killed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_5b
    const-string p0, "Success"

    .line 149
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_62
    move-exception v1

    .line 137
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: cannot parse arguments ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 45
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x431aefea

    const/4 v3, 0x1

    if-eq v1, v2, :cond_23

    const v2, 0x323b5e

    if-eq v1, v2, :cond_18

    goto :goto_2e

    :cond_18
    const-string/jumbo v1, "kill"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v3

    goto :goto_2f

    :cond_23
    const-string/jumbo v1, "prelaunch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v1, v0

    :goto_2f
    if-eqz v1, :cond_3d

    if-eq v1, v3, :cond_38

    .line 51
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->kill()I

    move-result p0

    return p0

    .line 47
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->prelaunch()I

    move-result p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p1

    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to use prelauncher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public onHelp()V
    .registers 3

    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "AppPrelauncher (prelauncher) commands:"

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help message."

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  prelaunch PACKAGE [--uid UID] [--stage STAGE]"

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Runs PACKAGE for UID in background until STAGE if specified"

    .line 67
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  kill PACKAGE [--uid UID]"

    .line 68
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Kills PACKAGE for UID if it is still prelaunched"

    .line 69
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseOptions()Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;-><init>(Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args-IA;)V

    .line 82
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    const-string v2, "--stage"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, "--uid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 92
    iget-object v2, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 95
    iput-object v1, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    goto :goto_6

    .line 93
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_3f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    goto :goto_6

    .line 88
    :cond_4a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->stage:I

    goto :goto_6

    .line 99
    :cond_55
    iget-object p0, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_9d

    .line 103
    iget p0, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_9c

    .line 104
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 105
    iget-object v2, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 105
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    iput p0, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    if-eq p0, v1, :cond_77

    goto :goto_9c

    .line 108
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not found for userId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    :goto_9c
    return-object v0

    .line 100
    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package name is not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prelaunch()I
    .registers 7

    const/4 v0, 0x1

    .line 118
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->parseOptions()Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_5} :catch_59

    .line 124
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->stage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand;->mService:Lcom/android/server/appprelauncher/AppPrelaunchService;

    iget-object v3, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->uid:I

    iget v5, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->stage:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->prelaunchAppTillStage(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_57

    .line 126
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: could not prelaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/appprelauncher/AppPrelaunchShellCommand$Args;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_57
    const/4 p0, 0x0

    return p0

    :catch_59
    move-exception v1

    .line 120
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: cannot parse arguments ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method
