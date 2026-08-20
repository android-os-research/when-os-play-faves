.class public final Lcom/android/server/rotationresolver/RotationResolverShellCommand;
.super Landroid/os/ShellCommand;
.source "RotationResolverShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;
    }
.end annotation


# static fields
.field public static final INITIAL_RESULT_CODE:I = -0x1

.field public static final sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;


# instance fields
.field public final mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-direct {v0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;-><init>()V

    sput-object v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    return-void
.end method


# virtual methods
.method public final getBoundPackageName()I
    .registers 3

    .line 86
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->getComponentNameShellCommand(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, ""

    goto :goto_1b

    .line 89
    :cond_17
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getLastResolution()I
    .registers 2

    .line 118
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-virtual {v0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->getLastCallbackCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    goto :goto_3d

    :sswitch_10
    const-string v1, "get-last-resolution"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3d

    :cond_19
    const/4 v0, 0x3

    goto :goto_3d

    :sswitch_1b
    const-string/jumbo v1, "set-temporary-service"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_3d

    :cond_25
    const/4 v0, 0x2

    goto :goto_3d

    :sswitch_27
    const-string/jumbo v1, "resolve-rotation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_3d

    :cond_31
    const/4 v0, 0x1

    goto :goto_3d

    :sswitch_33
    const-string v1, "get-bound-package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    packed-switch v0, :pswitch_data_6c

    .line 81
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 75
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getLastResolution()I

    move-result p0

    return p0

    .line 79
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->setTemporaryService()I

    move-result p0

    return p0

    .line 73
    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->runResolveRotation()I

    move-result p0

    return p0

    .line 77
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->getBoundPackageName()I

    move-result p0

    return p0

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x7c399b40 -> :sswitch_33
        0x16ed7a3f -> :sswitch_27
        0x41db2e8e -> :sswitch_1b
        0x6c821bcc -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Rotation Resolver commands: "

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  resolve-rotation USER_ID: request a rotation resolution."

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-last-resolution: show the last rotation resolution result."

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-bound-package USER_ID:"

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print the bound package that implements the service."

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-temporary-service USER_ID [COMPONENT_NAME DURATION]"

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Temporarily (for DURATION ms) changes the service implementation."

    .line 135
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    To reset, call with just the USER_ID argument."

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runResolveRotation()I
    .registers 10

    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    new-instance v8, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x7d0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    .line 113
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    sget-object v1, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->sTestableRotationCallbackInternal:Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;

    invoke-virtual {p0, v0, v1, v8}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->resolveRotationShellCommand(ILandroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setTemporaryService()I
    .registers 6

    .line 94
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    .line 98
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    const-string p0, "RotationResolverService temporary reset. "

    .line 99
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 102
    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand;->mService:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotationResolverService temporarily set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method
