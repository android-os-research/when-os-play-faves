.class public Lcom/android/server/usage/UsageStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "UsageStatsShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    const-string v0, "clear-last-used-timestamps"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 40
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->runClearLastUsedTimestamps()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "UsageStats service (usagestats) commands:"

    .line 49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "help"

    .line 50
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 51
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "clear-last-used-timestamps PACKAGE_NAME [-u | --user USER_ID]"

    .line 53
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Clears any existing usage data for the given package."

    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runClearLastUsedTimestamps()I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AndroidFrameworkRequiresPermission"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    move v2, v1

    .line 64
    :goto_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    const-string v2, "-u"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_37

    .line 68
    :cond_1d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 66
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_40
    if-ne v2, v1, :cond_46

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 76
    :cond_46
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usage/UsageStatsService;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method
