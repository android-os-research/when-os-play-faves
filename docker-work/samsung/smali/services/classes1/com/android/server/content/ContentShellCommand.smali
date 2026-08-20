.class public Lcom/android/server/content/ContentShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentShellCommand.java"


# instance fields
.field public final mInterface:Landroid/content/IContentService;


# direct methods
.method public constructor <init>(Landroid/content/IContentService;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 38
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 40
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f770c6b

    if-eq v2, v3, :cond_16

    goto :goto_21

    :cond_16
    const-string/jumbo v2, "reset-today-stats"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 42
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/content/ContentShellCommand;->runResetTodayStats()I

    move-result p0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_2e

    return p0

    :catch_2e
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onHelp()V
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Content service commands:"

    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-today-stats"

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset 1-day sync stats."

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runResetTodayStats()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/server/content/ContentShellCommand;->mInterface:Landroid/content/IContentService;

    invoke-interface {p0}, Landroid/content/IContentService;->resetTodayStats()V

    const/4 p0, 0x0

    return p0
.end method
