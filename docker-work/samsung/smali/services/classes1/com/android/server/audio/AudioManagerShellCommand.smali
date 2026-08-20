.class public Lcom/android/server/audio/AudioManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "AudioManagerShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioManagerShellCommand"


# instance fields
.field public final mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final getEncodedSurroundMode()I
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 161
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 162
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded surround mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getIsSurroundFormatEnabled()I
    .registers 5

    .line 106
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 109
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 115
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_53

    if-gez v0, :cond_21

    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 125
    :cond_21
    iget-object v1, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 126
    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of enabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 117
    :catch_53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 40
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    const/4 v0, -0x1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_5a

    goto :goto_41

    :sswitch_14
    const-string v1, "get-encoded-surround-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_41

    :cond_1d
    const/4 v0, 0x3

    goto :goto_41

    :sswitch_1f
    const-string v1, "get-is-surround-format-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_41

    :cond_28
    const/4 v0, 0x2

    goto :goto_41

    :sswitch_2a
    const-string/jumbo v1, "set-surround-format-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_41

    :cond_34
    const/4 v0, 0x1

    goto :goto_41

    :sswitch_36
    const-string/jumbo v1, "set-encoded-surround-mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    :goto_41
    packed-switch v0, :pswitch_data_6c

    return v2

    .line 49
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getEncodedSurroundMode()I

    move-result p0

    return p0

    .line 45
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->getIsSurroundFormatEnabled()I

    move-result p0

    return p0

    .line 43
    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setSurroundFormatEnabled()I

    move-result p0

    return p0

    .line 47
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/server/audio/AudioManagerShellCommand;->setEncodedSurroundMode()I

    move-result p0

    return p0

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x6fa638d8 -> :sswitch_36
        -0x4fdec891 -> :sswitch_2a
        0x37e12d0e -> :sswitch_1f
        0x5e162b1c -> :sswitch_14
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

    .line 56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Audio manager commands:"

    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 58
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-surround-format-enabled SURROUND_FORMAT IS_ENABLED"

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enables/disabled the SURROUND_FORMAT based on IS_ENABLED"

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-is-surround-format-enabled SURROUND_FORMAT"

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns if the SURROUND_FORMAT is enabled"

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-encoded-surround-mode SURROUND_SOUND_MODE"

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the encoded surround sound mode to SURROUND_SOUND_MODE"

    .line 66
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-encoded-surround-mode"

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the encoded surround sound mode"

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setEncodedSurroundMode()I
    .registers 3

    .line 133
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no encodedSurroundMode specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 142
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_32

    if-gez v0, :cond_21

    .line 149
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of encodedSurroundMode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 153
    :cond_21
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 154
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 155
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setEncodedSurroundMode(I)Z

    const/4 p0, 0x0

    return p0

    .line 144
    :catch_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for encoded surround mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setSurroundFormatEnabled()I
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 76
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_15
    if-nez v1, :cond_21

    .line 81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no enabled value for surroundFormat specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 88
    :cond_21
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_29} :catch_46

    if-gez v0, :cond_35

    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 99
    :cond_35
    iget-object p0, p0, Lcom/android/server/audio/AudioManagerShellCommand;->mService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 100
    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 101
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->setSurroundFormatEnabled(IZ)Z

    const/4 p0, 0x0

    return p0

    .line 91
    :catch_46
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: wrong format specified for surroundFormat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method
