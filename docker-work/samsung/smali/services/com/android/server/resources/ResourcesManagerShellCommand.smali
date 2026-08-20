.class public Lcom/android/server/resources/ResourcesManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "ResourcesManagerShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResourcesManagerShellCommand"


# instance fields
.field public final mInterface:Landroid/content/res/IResourcesManager;


# direct methods
.method public static synthetic $r8$lambda$uAdpj2cV3MrG5KYt0hTIrksJ6vc(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/resources/ResourcesManagerShellCommand;->lambda$dumpResources$0(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/IResourcesManager;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    return-void
.end method

.method public static synthetic lambda$dumpResources$0(Landroid/os/ConditionVariable;Landroid/os/Bundle;)V
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method


# virtual methods
.method public final dumpResources()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 66
    :try_start_5
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 68
    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 70
    iget-object v4, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Landroid/content/res/IResourcesManager;

    .line 71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 70
    invoke-interface {v4, v0, v5, v3}, Landroid/content/res/IResourcesManager;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESOURCES DUMP FAILED on process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_3e
    const-wide/16 v3, 0x1388

    .line 75
    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_43} :catch_45

    const/4 p0, 0x0

    return p0

    :catch_45
    move-exception v0

    const-string v2, "ResourcesManagerShellCommand"

    const-string v3, "Exception while dumping resources"

    .line 78
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while dumping resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 6

    if-nez p1, :cond_7

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 47
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 49
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2f39f4

    if-eq v2, v3, :cond_16

    goto :goto_20

    :cond_16
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    move v2, v1

    :goto_21
    if-eqz v2, :cond_28

    .line 53
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 51
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->dumpResources()I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_2c} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    :catch_43
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5c
    return v1
.end method

.method public onHelp()V
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Resources manager commands:"

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump <PROCESS>"

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Dump the Resources objects in use as well as the history of Resources"

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
