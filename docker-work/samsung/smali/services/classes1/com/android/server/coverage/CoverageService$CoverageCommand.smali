.class public Lcom/android/server/coverage/CoverageService$CoverageCommand;
.super Landroid/os/ShellCommand;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coverage/CoverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverageCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/coverage/CoverageService$CoverageCommand-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    const-string v0, "dump"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onDump()I

    move-result p0

    return p0

    :cond_d
    const-string/jumbo v0, "reset"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 76
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onReset()I

    move-result p0

    return p0

    .line 78
    :cond_1b
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final onDump()I
    .registers 8

    .line 104
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "/data/local/tmp/coverage.ec"

    goto :goto_1f

    .line 108
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v2, "coverage.ec"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    :goto_1f
    const-string/jumbo v1, "w"

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_2a

    return v2

    .line 121
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_63

    .line 123
    :try_start_34
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Dumped coverage data to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_59

    .line 126
    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_63

    return v4

    :catchall_59
    move-exception v0

    .line 121
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v1

    :try_start_5f
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_62
    throw v0
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    :catch_63
    move-exception v0

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump coverage data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public onHelp()V
    .registers 2

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Coverage commands:"

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump [FILE]"

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Dump code coverage to FILE."

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset"

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset coverage information."

    .line 94
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onReset()I
    .registers 2

    .line 140
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/agent/rt/IAgent;->reset()V

    .line 141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Reset coverage data"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
