.class public Lcom/android/server/vr/XrManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "XrManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 24
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_ca

    goto/16 :goto_8f

    :sswitch_15
    const-string/jumbo v2, "vr-immersive-allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_8f

    :cond_20
    const/16 v1, 0x9

    goto/16 :goto_8f

    :sswitch_24
    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_8f

    :cond_2f
    const/16 v1, 0x8

    goto/16 :goto_8f

    :sswitch_33
    const-string v2, "mount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_8f

    :cond_3c
    const/4 v1, 0x7

    goto :goto_8f

    :sswitch_3e
    const-string v2, "dock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto :goto_8f

    :cond_47
    const/4 v1, 0x6

    goto :goto_8f

    :sswitch_49
    const-string/jumbo v2, "vr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_8f

    :cond_53
    const/4 v1, 0x5

    goto :goto_8f

    :sswitch_55
    const-string/jumbo v2, "unmount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    goto :goto_8f

    :cond_5f
    const/4 v1, 0x4

    goto :goto_8f

    :sswitch_61
    const-string/jumbo v2, "undock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    goto :goto_8f

    :cond_6b
    const/4 v1, 0x3

    goto :goto_8f

    :sswitch_6d
    const-string v2, "hide-cutout-allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto :goto_8f

    :cond_76
    const/4 v1, 0x2

    goto :goto_8f

    :sswitch_78
    const-string/jumbo v2, "vr-allowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    goto :goto_8f

    :cond_82
    const/4 v1, 0x1

    goto :goto_8f

    :sswitch_84
    const-string/jumbo v2, "persistent-vr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    packed-switch v1, :pswitch_data_f4

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 45
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runVrImmserviceModeAllowed()I

    move-result p0

    return p0

    .line 39
    :pswitch_9c
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runStateCommand()I

    move-result p0

    return p0

    .line 35
    :pswitch_a1
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runMountCommand()I

    move-result p0

    return p0

    .line 31
    :pswitch_a6
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runDockCommand()I

    move-result p0

    return p0

    .line 27
    :pswitch_ab
    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerShellCommand;->runVrCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 37
    :pswitch_b0
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runUnMountCommand()I

    move-result p0

    return p0

    .line 33
    :pswitch_b5
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runUndockCommand()I

    move-result p0

    return p0

    .line 43
    :pswitch_ba
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runHideCutoutAllowed()I

    move-result p0

    return p0

    .line 29
    :pswitch_bf
    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerShellCommand;->runVrAllowedCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 41
    :pswitch_c4
    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerShellCommand;->runPersistentVrCommand()I

    move-result p0

    return p0

    nop

    :sswitch_data_ca
    .sparse-switch
        -0x6d98f24e -> :sswitch_84
        -0x53698869 -> :sswitch_78
        -0x3f54556e -> :sswitch_6d
        -0x321bc3b4 -> :sswitch_61
        -0x10dd9ae0 -> :sswitch_55
        0xebc -> :sswitch_49
        0x2f2233 -> :sswitch_3e
        0x6343c19 -> :sswitch_33
        0x68ac491 -> :sswitch_24
        0x49e1bbc5 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_bf
        :pswitch_ba
        :pswitch_b5
        :pswitch_b0
        :pswitch_ab
        :pswitch_a6
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 119
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "XrManager commands:"

    .line 120
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  vr <true/false>"

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state directly."

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dock"

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state docked."

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  undock"

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state undocked."

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mount"

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state mount."

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  unmount"

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     set vr state unmount."

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runDockCommand()I
    .registers 3

    .line 67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, "Gear VR"

    :goto_b
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runHideCutoutAllowed()I
    .registers 2

    .line 106
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->setHideCutOutAllowed(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runMountCommand()I
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runPersistentVrCommand()I
    .registers 2

    .line 100
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->setPersistentVrMode(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStateCommand()I
    .registers 4

    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 91
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    goto :goto_30

    .line 93
    :cond_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    const/4 p0, 0x0

    return p0
.end method

.method public final runUnMountCommand()I
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/vr/HmtEvent;->obtain(I)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runUndockCommand()I
    .registers 3

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, "Gear VR"

    :goto_b
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/samsung/android/vr/HmtEvent;->obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runVrAllowedCommand(Ljava/io/PrintWriter;)I
    .registers 2

    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setVrModeAllowed(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runVrCommand(Ljava/io/PrintWriter;)I
    .registers 4

    .line 52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    .line 56
    :goto_11
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/vr/XrManagerService;->setVrMode(IZ)V

    return v1
.end method

.method public final runVrImmserviceModeAllowed()I
    .registers 2

    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/server/vr/XrManagerShellCommand;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->setVrImmersiveModeAllowed(Z)V

    const/4 p0, 0x0

    return p0
.end method
