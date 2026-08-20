.class public Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "ContentSuggestionsManagerServiceShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    return-void
.end method


# virtual methods
.method public final getDefaultServiceEnabled(Ljava/io/PrintWriter;)I
    .registers 3

    .line 122
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 123
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isDefaultServiceEnabled(I)Z

    move-result p0

    .line 124
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getNextIntArgRequired()I
    .registers 1

    .line 129
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 44
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "get"

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string/jumbo v1, "set"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 51
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 49
    :cond_26
    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 3

    const-string v0, ""

    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_6
    const-string v1, "ContentSuggestionsManagerService commands:"

    .line 58
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 59
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prints this help text."

    .line 60
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 62
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 63
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    To reset, call with just the USER_ID argument."

    .line 64
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set default-service-enabled USER_ID [true|false]"

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Enable / disable the default service for the user."

    .line 67
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  get default-service-enabled USER_ID"

    .line 69
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Checks whether the default service is enabled for the user."

    .line 70
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_48

    .line 72
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_48
    move-exception v0

    if-eqz p0, :cond_53

    .line 57
    :try_start_4b
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw v0
.end method

.method public final requestGet(Ljava/io/PrintWriter;)I
    .registers 4

    .line 90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid get: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 93
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getDefaultServiceEnabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public final requestSet(Ljava/io/PrintWriter;)I
    .registers 4

    .line 76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "default-service-enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "temporary-service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid set: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 80
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->setTemporaryService(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 82
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->setDefaultServiceEnabled()I

    move-result p0

    return p0
.end method

.method public final setDefaultServiceEnabled()I
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->getNextIntArgRequired()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 117
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryService(Ljava/io/PrintWriter;)I
    .registers 6

    .line 101
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 104
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    return v2

    .line 107
    :cond_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 108
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;->mService:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentSuggestionsService temporarily set to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
