.class public Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "SmartspaceManagerServiceShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/smartspace/SmartspaceManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/smartspace/SmartspaceManagerService;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;->mService:Lcom/android/server/smartspace/SmartspaceManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 43
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "set"

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 46
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2b

    goto :goto_72

    .line 49
    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 50
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    .line 52
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;->mService:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string p0, "SmartspaceService temporarily reset. "

    .line 53
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 56
    :cond_44
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 57
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerServiceShellCommand;->mService:Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SmartspaceService temporarily set to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_72
    return v1
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string v1, "SmartspaceManagerService commands:"

    .line 74
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 75
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 76
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 78
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily (for DURATION ms) changes the service implemtation."

    .line 79
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 80
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2e

    .line 82
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_2e
    move-exception v0

    if-eqz p0, :cond_39

    .line 73
    :try_start_31
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw v0
.end method
