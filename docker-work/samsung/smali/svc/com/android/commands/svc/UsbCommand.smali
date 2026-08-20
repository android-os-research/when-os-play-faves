.class public Lcom/android/commands/svc/UsbCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "UsbCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    const-string v0, "usb"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/UsbCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc usb setFunctions [function]\n         Set the current usb function. If function is blank, sets to charging.\n       svc usb setScreenUnlockedFunctions [function]\n         Sets the functions which, if the device was charging,\n         become current on screen unlock.\n         If function is blank, turn off this feature.\n       svc usb getFunctions\n         Gets the list of currently enabled functions\n         possible values of [function] are any of \'mtp\', \'ptp\', \'rndis\',\n         \'midi\', \'ncm (if supporting gadget hal v1.2)\'\n       svc usb resetUsbGadget\n         Reset usb gadget\n       svc usb getUsbSpeed\n         Gets current USB speed\n         possible values of USB speed are any of \'low speed\', \'full speed\',\n         \'high speed\', \'super speed\', \'super speed (10G)\',\n         \'super speed (20G)\', or higher (future extension)\n       svc usb getGadgetHalVersion\n         Gets current Gadget Hal Version\n         possible values of Hal version are any of \'unknown\', \'V1_0\', \'V1_1\',\n         \'V1_2\'\n       svc usb getUsbHalVersion\n         Gets current USB Hal Version\n         possible values of Hal version are any of \'unknown\', \'V1_0\', \'V1_1\',\n         \'V1_2\', \'V1_3\'\n       svc usb resetUsbPort [port number]\n         Reset the specified connected usb port\n         default: the first connected usb port\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 18
    .param p1, "args"    # [Ljava/lang/String;

    .line 79
    move-object/from16 v1, p1

    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_288

    .line 80
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 81
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 82
    .local v3, "context":Landroid/content/Context;
    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 83
    .local v4, "usbManager":Landroid/hardware/usb/UsbManager;
    const-string v0, "usb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v5

    .line 86
    .local v5, "usbMgr":Landroid/hardware/usb/IUsbManager;
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 87
    .local v6, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/android/commands/svc/UsbCommand$1;

    move-object/from16 v7, p0

    invoke-direct {v0, v7}, Lcom/android/commands/svc/UsbCommand$1;-><init>(Lcom/android/commands/svc/UsbCommand;)V

    move-object v8, v0

    .line 93
    .local v8, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    aget-object v9, v1, v0

    const-string v10, "setFunctions"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, ""

    const/4 v11, 0x3

    const-string v12, "Error communicating with UsbManager: "

    if-eqz v9, :cond_66

    .line 95
    nop

    .line 96
    :try_start_41
    array-length v0, v1

    if-lt v0, v11, :cond_46

    aget-object v10, v1, v2

    .line 95
    :cond_46
    invoke-static {v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v5, v9, v10}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(J)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4d} :catch_4e

    .line 99
    goto :goto_65

    .line 97
    :catch_4e
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_65
    return-void

    .line 101
    :cond_66
    aget-object v9, v1, v0

    const-string v13, "getFunctions"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 103
    :try_start_70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 104
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7d} :catch_7e

    .line 107
    goto :goto_95

    .line 105
    :catch_7e
    move-exception v0

    .line 106
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_95
    return-void

    .line 109
    :cond_96
    aget-object v9, v1, v0

    const-string v13, "setScreenUnlockedFunctions"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 111
    nop

    .line 112
    :try_start_a1
    array-length v0, v1

    if-lt v0, v11, :cond_a6

    aget-object v10, v1, v2

    .line 111
    :cond_a6
    invoke-static {v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v5, v9, v10}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_ad} :catch_ae

    .line 115
    goto :goto_c5

    .line 113
    :catch_ae
    move-exception v0

    .line 114
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c5
    return-void

    .line 117
    :cond_c6
    aget-object v9, v1, v0

    const-string v10, "resetUsbGadget"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 119
    :try_start_d0
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->resetUsbGadget()V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d3} :catch_d4

    .line 122
    goto :goto_ed

    .line 120
    :catch_d4
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 121
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ed
    return-void

    .line 124
    :cond_ee
    aget-object v9, v1, v0

    const-string v10, "getUsbSpeed"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 126
    :try_start_f8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 127
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getCurrentUsbSpeed()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbManager;->usbSpeedToBandwidth(I)I

    move-result v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_105} :catch_106

    .line 130
    goto :goto_11d

    .line 128
    :catch_106
    move-exception v0

    .line 129
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11d
    return-void

    .line 132
    :cond_11e
    aget-object v9, v1, v0

    const-string v10, "getGadgetHalVersion"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14e

    .line 134
    :try_start_128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 136
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getGadgetHalVersion()I

    move-result v2

    .line 135
    invoke-static {v2}, Landroid/hardware/usb/UsbManager;->usbGadgetHalVersionToString(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_135} :catch_136

    .line 139
    goto :goto_14d

    .line 137
    :catch_136
    move-exception v0

    .line 138
    .restart local v0    # "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14d
    return-void

    .line 141
    :cond_14e
    aget-object v9, v1, v0

    const-string v10, "getUsbHalVersion"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 143
    :try_start_158
    invoke-interface {v5}, Landroid/hardware/usb/IUsbManager;->getUsbHalVersion()I

    move-result v0

    .line 145
    .local v0, "version":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_168

    .line 146
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_3"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_193

    .line 147
    :cond_168
    const/16 v2, 0xc

    if-ne v0, v2, :cond_174

    .line 148
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_2"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_193

    .line 149
    :cond_174
    const/16 v2, 0xb

    if-ne v0, v2, :cond_180

    .line 150
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_1"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_193

    .line 151
    :cond_180
    const/16 v2, 0xa

    if-ne v0, v2, :cond_18c

    .line 152
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "V1_0"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_193

    .line 154
    :cond_18c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "unknown"

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_158 .. :try_end_193} :catch_194

    .line 158
    .end local v0    # "version":I
    :goto_193
    goto :goto_1ab

    .line 156
    :catch_194
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1ab
    return-void

    .line 160
    :cond_1ac
    aget-object v0, v1, v0

    const-string v9, "resetUsbPort"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    .line 162
    :try_start_1b6
    array-length v0, v1

    const/4 v9, -0x1

    if-lt v0, v11, :cond_1c1

    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1c2

    :cond_1c1
    move v0, v9

    .line 163
    .local v0, "portNum":I
    :goto_1c2
    const/4 v2, 0x0

    .line 164
    .local v2, "port":Landroid/hardware/usb/UsbPort;
    const/4 v10, 0x0

    .line 165
    .local v10, "portStatus":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v11

    .line 166
    .local v11, "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 168
    .local v13, "numPorts":I
    if-lez v13, :cond_268

    .line 169
    if-eq v0, v9, :cond_203

    if-ge v0, v13, :cond_203

    .line 170
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v9

    move-object v10, v9

    .line 171
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_23c

    .line 172
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    move-object v2, v9

    .line 173
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Get the USB port: port"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_23c

    .line 177
    :cond_203
    const/4 v0, 0x0

    :goto_204
    if-ge v0, v13, :cond_23c

    .line 178
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v9}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v9

    .line 179
    .local v9, "status":Landroid/hardware/usb/UsbPortStatus;
    invoke-virtual {v9}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_237

    .line 180
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/usb/UsbPort;

    move-object v2, v14

    .line 181
    move-object v10, v9

    .line 182
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use the default USB port: port"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    goto :goto_23c

    .line 177
    .end local v9    # "status":Landroid/hardware/usb/UsbPortStatus;
    :cond_237
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_204

    .line 188
    :cond_23c
    :goto_23c
    if-eqz v2, :cond_260

    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_260

    .line 189
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reset the USB port: port"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2, v6, v8}, Landroid/hardware/usb/UsbPort;->resetUsbPort(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_26f

    .line 193
    :cond_260
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "There is no available reset USB port"

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_26f

    .line 197
    :cond_268
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "No USB ports"

    invoke-virtual {v1, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_26f} :catch_270

    .line 201
    .end local v0    # "portNum":I
    .end local v2    # "port":Landroid/hardware/usb/UsbPort;
    .end local v10    # "portStatus":Landroid/hardware/usb/UsbPortStatus;
    .end local v11    # "ports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/usb/UsbPort;>;"
    .end local v13    # "numPorts":I
    :goto_26f
    goto :goto_287

    .line 199
    :catch_270
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_287
    return-void

    .line 79
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local v5    # "usbMgr":Landroid/hardware/usb/IUsbManager;
    .end local v6    # "executor":Ljava/util/concurrent/Executor;
    .end local v8    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :cond_288
    move-object/from16 v7, p0

    .line 205
    :cond_28a
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Lcom/android/commands/svc/UsbCommand;->longHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, "Control Usb state"

    return-object v0
.end method
