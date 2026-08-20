.class public final Lcom/android/server/hdmi/HdmiControlShellCommand;
.super Landroid/os/ShellCommand;
.source "HdmiControlShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HdmiShellCommand"


# instance fields
.field public final mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

.field public mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static bridge synthetic -$$Nest$mgetResultString(Lcom/android/server/hdmi/HdmiControlShellCommand;I)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->getResultString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    .line 44
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance p1, Lcom/android/server/hdmi/HdmiControlShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand$1;-><init>(Lcom/android/server/hdmi/HdmiControlShellCommand;)V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    return-void
.end method


# virtual methods
.method public final cecSetting(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b7

    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, " = "

    if-nez v1, :cond_7b

    const-string/jumbo v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 222
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 225
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v4, v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_44} :catch_45

    goto :goto_63

    .line 228
    :catch_45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 229
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setCecSettingIntValue(Ljava/lang/String;I)V

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_63
    return v2

    .line 235
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_7b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 213
    :try_start_7f
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {v1, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_9a} :catch_9b

    goto :goto_b6

    .line 216
    :catch_9b
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getCecSettingIntValue(Ljava/lang/String;)I

    move-result p0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b6
    return v2

    .line 206
    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected at least 1 argument (operation)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deviceSelect(Ljava/io/PrintWriter;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 135
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Sending Device Select..."

    .line 137
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    const-string p1, "Device Select"

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    return v1

    .line 144
    :cond_24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_2d

    const/4 v1, 0x0

    :cond_2d
    return v1

    .line 133
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected exactly 1 argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getResultString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_2b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_28

    const/4 p0, 0x2

    if-eq p1, p0, :cond_25

    const/4 p0, 0x3

    if-eq p1, p0, :cond_22

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1f

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1c

    const/4 p0, 0x7

    if-eq p1, p0, :cond_19

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const-string p0, "Communication Failed"

    return-object p0

    :cond_1c
    const-string p0, "Incorrect mode"

    return-object p0

    :cond_1f
    const-string p0, "Exception"

    return-object p0

    :cond_22
    const-string p0, "Target not available"

    return-object p0

    :cond_25
    const-string p0, "Source not available"

    return-object p0

    :cond_28
    const-string p0, "Timeout"

    return-object p0

    :cond_2b
    const-string p0, "Success"

    return-object p0
.end method

.method public final handleShellCommand(Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_be

    goto/16 :goto_7e

    :sswitch_12
    const-string v1, "cec_setting"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_7e

    :cond_1c
    const/16 v3, 0x8

    goto/16 :goto_7e

    :sswitch_20
    const-string/jumbo v1, "vendorcommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_7e

    :cond_2a
    const/4 v3, 0x7

    goto :goto_7e

    :sswitch_2c
    const-string/jumbo v1, "otp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_7e

    :cond_36
    const/4 v3, 0x6

    goto :goto_7e

    :sswitch_38
    const-string v1, "deviceselect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_7e

    :cond_41
    const/4 v3, 0x5

    goto :goto_7e

    :sswitch_43
    const-string/jumbo v1, "setsystemaudiomode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_7e

    :cond_4d
    const/4 v3, 0x4

    goto :goto_7e

    :sswitch_4f
    const-string/jumbo v1, "setsam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_7e

    :cond_59
    const/4 v3, 0x3

    goto :goto_7e

    :sswitch_5b
    const-string/jumbo v1, "setarc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_7e

    :cond_65
    const/4 v3, 0x2

    goto :goto_7e

    :sswitch_67
    const-string/jumbo v1, "onetouchplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_7e

    :cond_71
    move v3, v2

    goto :goto_7e

    :sswitch_73
    const-string/jumbo v1, "history_size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    packed-switch v3, :pswitch_data_e4

    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 115
    :pswitch_9a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->cecSetting(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 113
    :pswitch_9f
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->vendorCommand(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 122
    :pswitch_a4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->deviceSelect(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 118
    :pswitch_a9
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setSystemAudioMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 120
    :pswitch_ae
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->setArcMode(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 111
    :pswitch_b3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->oneTouchPlay(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 124
    :pswitch_b8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlShellCommand;->historySize(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    nop

    :sswitch_data_be
    .sparse-switch
        -0x74f38f34 -> :sswitch_73
        -0x38ff28b3 -> :sswitch_67
        -0x35fd3550 -> :sswitch_5b
        -0x35fcf3c3 -> :sswitch_4f
        -0x1bd7bf78 -> :sswitch_43
        -0x18c452e -> :sswitch_38
        0x1af2b -> :sswitch_2c
        0x25083903 -> :sswitch_20
        0x4ed06452 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a9
        :pswitch_a4
        :pswitch_b3
        :pswitch_9f
        :pswitch_9a
    .end packed-switch
.end method

.method public final historySize(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_92

    .line 290
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_77

    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 298
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 301
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_28} :catch_4b

    .line 306
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setMessageHistorySize(I)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CEC dumpsys message history size to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_45
    const-string p0, "Message history size not changed, was it lower than the minimum size?"

    .line 309
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4a
    return v3

    .line 303
    :catch_4b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set CEC dumpsys message history size to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 316
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown operation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :cond_77
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->getMessageHistorySize()I

    move-result p0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CEC dumpsys message history size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 287
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use \'set\' or \'get\' for the command action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 64
    :cond_7
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->handleShellCommand(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception v0

    .line 66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught error for command \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error handling hdmi_control shell command: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HdmiShellCommand"

    invoke-static {p1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "HdmiControlManager (hdmi_control) commands:"

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  onetouchplay, otp"

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Send the \"One Touch Play\" feature from a source to the TV"

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  vendorcommand --device_type <originating device type>"

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                --destination <destination device>"

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                --args <vendor specific arguments>"

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "                [--id <true if vendor command should be sent with vendor id>]"

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Send a Vendor Command to the given target device"

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cec_setting get <setting name>"

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Get the current value of a CEC setting"

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  cec_setting set <setting name> <value>"

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Set the value of a CEC setting"

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  setsystemaudiomode, setsam [on|off]"

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Sets the System Audio Mode feature on or off on TV devices"

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  setarc [on|off]"

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Sets the ARC feature on or off on TV devices"

    .line 94
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  deviceselect <device id>"

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Switch to device with given id"

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      The device\'s id is represented by its logical address."

    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  history_size get"

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Gets the number of messages that can be stored in dumpsys history"

    .line 99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  history_size set <new_size>"

    .line 100
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Changes the number of messages that can be stored in dumpsys history to new_size"

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final oneTouchPlay(Ljava/io/PrintWriter;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Sending One Touch Play..."

    .line 148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const-string p1, "One Touch Play"

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_16

    return v0

    .line 155
    :cond_16
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    return v0
.end method

.method public final receiveCallback(Ljava/lang/String;)Z
    .registers 6

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 323
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timed out."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_24} :catch_26

    const/4 p0, 0x0

    return p0

    .line 327
    :catch_26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Caught InterruptedException"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public final setArcMode(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if ARC mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_3c

    .line 270
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "on"

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    const-string v0, "Setting ARC mode on"

    .line 272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    goto :goto_35

    :cond_22
    const-string/jumbo v2, "off"

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "Setting ARC mode off"

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v4}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setArcMode(Z)V

    :goto_35
    return v4

    .line 278
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSystemAudioMode(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const-string v1, "Please indicate if System Audio Mode should be turned \"on\" or \"off\"."

    const/4 v2, 0x1

    if-gt v2, v0, :cond_52

    .line 245
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "on"

    .line 246
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    const-string v0, "Setting System Audio Mode on"

    .line 247
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v2, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_39

    :cond_24
    const-string/jumbo v3, "off"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v0, "Setting System Audio Mode off"

    .line 250
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mHdmiControlCallback:Landroid/hardware/hdmi/IHdmiControlCallback$Stub;

    invoke-virtual {p1, v4, v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    :goto_39
    const-string p1, "Set System Audio Mode"

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlShellCommand;->receiveCallback(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    return v2

    .line 261
    :cond_42
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mCecResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-nez p0, :cond_4b

    move v2, v4

    :cond_4b
    return v2

    .line 253
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final vendorCommand(Ljava/io/PrintWriter;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRemainingArgsCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v1, v0, :cond_da

    .line 168
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_12
    if-eqz v0, :cond_b5

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_e2

    :goto_1b
    move v8, v2

    goto/16 :goto_75

    :sswitch_1e
    const-string v8, "--args"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v8, 0x7

    goto :goto_75

    :sswitch_29
    const-string v8, "--id"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_1b

    :cond_32
    move v8, v1

    goto :goto_75

    :sswitch_34
    const-string v8, "-t"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto :goto_1b

    :cond_3d
    const/4 v8, 0x5

    goto :goto_75

    :sswitch_3f
    const-string v8, "-i"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_1b

    :cond_48
    const/4 v8, 0x4

    goto :goto_75

    :sswitch_4a
    const-string v8, "-d"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_1b

    :cond_53
    const/4 v8, 0x3

    goto :goto_75

    :sswitch_55
    const-string v8, "-a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5e

    goto :goto_1b

    :cond_5e
    const/4 v8, 0x2

    goto :goto_75

    :sswitch_60
    const-string v8, "--destination"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_69

    goto :goto_1b

    :cond_69
    const/4 v8, 0x1

    goto :goto_75

    :sswitch_6b
    const-string v8, "--device_type"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    goto :goto_1b

    :cond_74
    move v8, v3

    :goto_75
    packed-switch v8, :pswitch_data_104

    .line 188
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown argument: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :pswitch_8f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_af

    .line 181
    :pswitch_98
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_af

    .line 177
    :pswitch_9e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_af

    .line 173
    :pswitch_a7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 190
    :goto_af
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_b5
    const-string v0, ":"

    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    array-length v1, v0

    new-array v2, v1, [B

    move v4, v3

    :goto_bf
    if-ge v4, v1, :cond_cf

    .line 196
    aget-object v8, v0, v4

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    :cond_cf
    const-string v0, "Sending <Vendor Command>"

    .line 199
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlShellCommand;->mBinderService:Landroid/hardware/hdmi/IHdmiControlService$Stub;

    invoke-virtual {p0, v5, v6, v2, v7}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->sendVendorCommand(II[BZ)V

    return v3

    .line 160
    :cond_da
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected 3 arguments."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_e2
    .sparse-switch
        -0x14b41a1d -> :sswitch_6b
        -0xdf78592 -> :sswitch_60
        0x5d4 -> :sswitch_55
        0x5d7 -> :sswitch_4a
        0x5dc -> :sswitch_3f
        0x5e7 -> :sswitch_34
        0x152abb -> :sswitch_29
        0x4f72067d -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_9e
        :pswitch_98
        :pswitch_9e
        :pswitch_8f
        :pswitch_a7
        :pswitch_8f
        :pswitch_98
    .end packed-switch
.end method
