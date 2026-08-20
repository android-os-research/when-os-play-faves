.class public Lcom/android/commands/uinput/Uinput;
.super Ljava/lang/Object;
.source "Uinput.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UINPUT"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/commands/uinput/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/android/commands/uinput/Event$Reader;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    .line 76
    :try_start_a
    new-instance v0, Lcom/android/commands/uinput/Event$Reader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/commands/uinput/Event$Reader;-><init>(Ljava/io/InputStreamReader;)V

    iput-object v0, p0, Lcom/android/commands/uinput/Uinput;->mReader:Lcom/android/commands/uinput/Event$Reader;
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_18} :catch_1a

    .line 79
    nop

    .line 80
    return-void

    .line 77
    :catch_1a
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static error(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 132
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 135
    const-string v0, "UINPUT"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_e

    .line 137
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_e
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 48
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 49
    invoke-static {}, Lcom/android/commands/uinput/Uinput;->usage()V

    .line 50
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 53
    :cond_a
    const/4 v0, 0x0

    .line 55
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_c
    aget-object v3, p0, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 56
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v0, v2

    goto :goto_28

    .line 58
    :cond_1a
    new-instance v3, Ljava/io/File;

    aget-object v2, p0, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 59
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 61
    .end local v2    # "f":Ljava/io/File;
    :goto_28
    new-instance v2, Lcom/android/commands/uinput/Uinput;

    invoke-direct {v2, v0}, Lcom/android/commands/uinput/Uinput;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2}, Lcom/android/commands/uinput/Uinput;->run()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_38
    .catchall {:try_start_c .. :try_end_30} :catchall_36

    .line 67
    :try_start_30
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    .line 69
    :goto_33
    goto :goto_45

    .line 68
    :catch_34
    move-exception v1

    .line 70
    goto :goto_45

    .line 66
    :catchall_36
    move-exception v1

    goto :goto_46

    .line 62
    :catch_38
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    :try_start_39
    const-string v3, "Uinput injection failed."

    invoke-static {v3, v2}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_36

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_34

    goto :goto_33

    .line 71
    :goto_45
    return-void

    .line 67
    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 69
    goto :goto_4b

    .line 68
    :catch_4a
    move-exception v2

    .line 70
    :goto_4b
    throw v1
.end method

.method private process(Lcom/android/commands/uinput/Event;)V
    .registers 7
    .param p1, "e"    # Lcom/android/commands/uinput/Event;

    .line 98
    iget-object v0, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 99
    .local v0, "index":I
    const-string v1, "register"

    if-ltz v0, :cond_8a

    .line 100
    iget-object v2, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/uinput/Device;

    .line 101
    .local v2, "d":Lcom/android/commands/uinput/Device;
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "delay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 102
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getDuration()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/commands/uinput/Device;->addDelay(I)V

    goto :goto_89

    .line 103
    :cond_2a
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inject"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 104
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getInjections()[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/commands/uinput/Device;->injectEvent([I)V

    goto :goto_89

    .line 106
    :cond_3e
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is already registered. Ignoring event."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;)V

    goto :goto_89

    .line 109
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\". Ignoring event."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;)V

    .line 112
    .end local v2    # "d":Lcom/android/commands/uinput/Device;
    :goto_89
    goto :goto_9f

    :cond_8a
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 113
    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Uinput;->registerDevice(Lcom/android/commands/uinput/Event;)V

    goto :goto_9f

    .line 115
    :cond_98
    const-string v1, "UINPUT"

    const-string v2, "Unknown device id specified. Ignoring event."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_9f
    return-void
.end method

.method private registerDevice(Lcom/android/commands/uinput/Event;)V
    .registers 13
    .param p1, "e"    # Lcom/android/commands/uinput/Event;

    .line 120
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 124
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getId()I

    move-result v0

    .line 125
    .local v0, "id":I
    new-instance v10, Lcom/android/commands/uinput/Device;

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getVendorId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getProductId()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getBus()I

    move-result v6

    .line 126
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getConfiguration()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getFfEffectsMax()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getAbsInfo()Landroid/util/SparseArray;

    move-result-object v9

    move-object v1, v10

    move v2, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/commands/uinput/Device;-><init>(ILjava/lang/String;IIILandroid/util/SparseArray;ILandroid/util/SparseArray;)V

    .line 127
    .local v1, "d":Lcom/android/commands/uinput/Device;
    iget-object v2, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 121
    .end local v0    # "id":I
    .end local v1    # "d":Lcom/android/commands/uinput/Device;
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to send command \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/android/commands/uinput/Event;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" to an unregistered device!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private run()V
    .registers 3

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "e":Lcom/android/commands/uinput/Event;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mReader:Lcom/android/commands/uinput/Event$Reader;

    invoke-virtual {v1}, Lcom/android/commands/uinput/Event$Reader;->getNextEvent()Lcom/android/commands/uinput/Event;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_e

    .line 86
    invoke-direct {p0, v0}, Lcom/android/commands/uinput/Uinput;->process(Lcom/android/commands/uinput/Event;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_f

    goto :goto_1

    .line 90
    .end local v0    # "e":Lcom/android/commands/uinput/Event;
    :cond_e
    goto :goto_15

    .line 88
    :catch_f
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Error reading in events."

    invoke-static {v1, v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 93
    iget-object v1, p0, Lcom/android/commands/uinput/Uinput;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/uinput/Device;

    invoke-virtual {v1}, Lcom/android/commands/uinput/Device;->close()V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 95
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method private static usage()V
    .registers 1

    .line 41
    const-string v0, "Usage: uinput [FILE]"

    invoke-static {v0}, Lcom/android/commands/uinput/Uinput;->error(Ljava/lang/String;)V

    .line 42
    return-void
.end method
