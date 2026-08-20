.class public Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "ShellCommandImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ShellCmdImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$oFZKweuR_5l-OqV1V-fRhjs23wQ(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->lambda$executeCommand$0(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 21
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$executeCommand$0(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 2

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->command(Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final executeCommand(Ljava/lang/String;)Z
    .registers 4

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getArgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 45
    new-instance v0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_27

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->printMsg(Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method

.method public final getArgList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_20
    return-object v0
.end method

.method public final getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ShellCmdImpl"

    const-string v1, "getReplyMsg"

    .line 84
    invoke-static {v0, v1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo p0, "paramStr0"

    const-string v0, ""

    .line 85
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, -0x1

    :goto_9
    return p0
.end method

.method public onHelp()V
    .registers 2

    const-string v0, "help"

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    return-void
.end method

.method public final printMsg(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    if-eqz p0, :cond_1b

    const-string v0, "\n"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    .line 62
    :cond_18
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    return-void
.end method
