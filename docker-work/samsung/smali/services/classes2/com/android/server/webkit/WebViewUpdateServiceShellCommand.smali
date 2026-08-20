.class public Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand.java"


# instance fields
.field public final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method public constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    return-void
.end method


# virtual methods
.method public final enableMultiProcess(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 78
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {p0, p1}, Landroid/webkit/IWebViewUpdateService;->enableMultiProcess(Z)V

    const-string p0, "Success"

    .line 79
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public helpSetWebViewImplementation()V
    .registers 2

    .line 84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "  set-webview-implementation PACKAGE"

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set the WebView implementation to the specified package."

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_7

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 37
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 39
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6ebb0ce0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_38

    const v3, -0x52550e2f

    if-eq v2, v3, :cond_2d

    const v3, 0x19ffa1db

    if-eq v2, v3, :cond_23

    goto :goto_42

    :cond_23
    const-string v2, "disable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v5

    goto :goto_43

    :cond_2d
    const-string/jumbo v2, "set-webview-implementation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v4

    goto :goto_43

    :cond_38
    const-string v2, "enable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v6

    goto :goto_43

    :cond_42
    :goto_42
    move v2, v1

    :goto_43
    if-eqz v2, :cond_58

    if-eq v2, v6, :cond_53

    if-eq v2, v5, :cond_4e

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 45
    :cond_4e
    invoke-virtual {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result p0

    return p0

    .line 43
    :cond_53
    invoke-virtual {p0, v6}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result p0

    return p0

    .line 41
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->setWebViewImplementation()I

    move-result p0
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_5c} :catch_5d

    return p0

    :catch_5d
    move-exception p0

    .line 50
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
    .registers 3

    .line 91
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "WebView updater commands:"

    .line 92
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    .line 93
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    .line 94
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 95
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->helpSetWebViewImplementation()V

    const-string p0, "  enable-multiprocess"

    .line 97
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Enable multi-process mode for WebView"

    .line 98
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  disable-multiprocess"

    .line 99
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Disable multi-process mode for WebView"

    .line 100
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final setWebViewImplementation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    const-string v1, "Failed to switch, no PACKAGE provided."

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    .line 60
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->helpSetWebViewImplementation()V

    return v2

    .line 64
    :cond_19
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {p0, v1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    const-string p0, "Success"

    .line 66
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_2c
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p0, v3, v2

    const-string p0, "Failed to switch to %s, the WebView implementation is now provided by %s."

    .line 69
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
