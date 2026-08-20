.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# static fields
.field private static final FORCE_SUSPEND_DELAY_DEFAULT_MILLIS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private maybeLogRemoteException(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 143
    const-string v0, "sys.powerctl"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "powerProp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Landroid/sysprop/InitProperties;->userspace_reboot_in_progress()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    .line 147
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_26
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc power stayon [true|false|usb|ac|wireless]\n         Set the \'keep awake while plugged in\' setting.\n       svc power reboot [reason]\n         Perform a runtime shutdown and reboot device with specified reason.\n       svc power shutdown\n         Perform a runtime shutdown and power off the device.\n       svc power forcesuspend [t]\n         Force the system into suspend, ignoring all wakelocks.\n         t - Number of milliseconds to wait before issuing force-suspend.\n             Helps with devices that can\'t suspend while plugged in.\n             Defaults to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\n             When using a delay, you must use the nohup shell modifier:\n             \'adb shell nohup svc power forcesuspend [time]\'\n         Use caution; this is dangerous. It puts the device to sleep\n         immediately without giving apps or the system an opportunity to\n         save their state.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 10
    .param p1, "args"    # [Ljava/lang/String;

    .line 63
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_131

    .line 64
    nop

    .line 65
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 66
    .local v0, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    const-string v4, "stayon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_85

    array-length v3, p1

    if-ne v3, v4, :cond_85

    .line 68
    aget-object v2, p1, v1

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 69
    const/4 v1, 0x7

    .local v1, "val":I
    goto :goto_59

    .line 73
    .end local v1    # "val":I
    :cond_2a
    aget-object v2, p1, v1

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 74
    const/4 v1, 0x0

    .restart local v1    # "val":I
    goto :goto_59

    .line 75
    .end local v1    # "val":I
    :cond_36
    aget-object v2, p1, v1

    const-string v3, "usb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 76
    const/4 v1, 0x2

    .restart local v1    # "val":I
    goto :goto_59

    .line 77
    .end local v1    # "val":I
    :cond_42
    aget-object v2, p1, v1

    const-string v3, "ac"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 78
    const/4 v1, 0x1

    .restart local v1    # "val":I
    goto :goto_59

    .line 79
    .end local v1    # "val":I
    :cond_4e
    aget-object v1, p1, v1

    const-string v2, "wireless"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    .line 80
    const/4 v1, 0x4

    .line 85
    .restart local v1    # "val":I
    :goto_59
    if-eqz v1, :cond_67

    .line 88
    :try_start_5b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "PowerCommand"

    const/4 v7, 0x0

    move-object v2, v0

    invoke-interface/range {v2 .. v7}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_67
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setStayOnSetting(I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6a} :catch_6b

    .line 95
    goto :goto_84

    .line 93
    :catch_6b
    move-exception v2

    .line 94
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Faild to set setting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_84
    return-void

    .line 97
    .end local v1    # "val":I
    :cond_85
    aget-object v3, p1, v2

    const-string v5, "reboot"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_c0

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "mode":Ljava/lang/String;
    array-length v6, p1

    if-ne v6, v4, :cond_96

    .line 100
    aget-object v3, p1, v1

    .line 104
    :cond_96
    :try_start_96
    invoke-interface {v0, v5, v3, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_99} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    .line 109
    :goto_99
    goto :goto_bf

    .line 107
    :catch_9a
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to reboot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_bf

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b8
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to reboot."

    invoke-direct {p0, v2}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_99

    .line 110
    :goto_bf
    return-void

    .line 111
    .end local v3    # "mode":Ljava/lang/String;
    :cond_c0
    aget-object v3, p1, v2

    const-string v4, "shutdown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 114
    const/4 v1, 0x0

    :try_start_cb
    invoke-interface {v0, v5, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 117
    goto :goto_d5

    .line 115
    :catch_cf
    move-exception v1

    .line 116
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "Failed to shutdown."

    invoke-direct {p0, v2}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_d5
    return-void

    .line 119
    :cond_d6
    aget-object v2, p1, v2

    const-string v3, "forcesuspend"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 120
    array-length v2, p1

    if-le v2, v1, :cond_ea

    .line 121
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_eb

    :cond_ea
    nop

    :goto_eb
    move v1, v5

    .line 123
    .local v1, "delayMillis":I
    int-to-long v2, v1

    :try_start_ed
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    invoke-interface {v0}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v2

    if-nez v2, :cond_12f

    .line 125
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to force suspend."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/lang/InterruptedException; {:try_start_ed .. :try_end_fd} :catch_116
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_fd} :catch_fe

    goto :goto_12f

    .line 129
    :catch_fe
    move-exception v2

    .line 130
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to force-suspend with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/svc/PowerCommand;->maybeLogRemoteException(Ljava/lang/String;)V

    goto :goto_130

    .line 127
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_116
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to force suspend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_12f
    :goto_12f
    nop

    .line 132
    :goto_130
    return-void

    .line 136
    .end local v0    # "pm":Landroid/os/IPowerManager;
    .end local v1    # "delayMillis":I
    :cond_131
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "Control the power manager"

    return-object v0
.end method
