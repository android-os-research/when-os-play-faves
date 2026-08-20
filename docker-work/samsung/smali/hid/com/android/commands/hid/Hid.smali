.class public Lcom/android/commands/hid/Hid;
.super Ljava/lang/Object;
.source "Hid.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HID"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/commands/hid/Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/android/commands/hid/Event$Reader;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    .line 67
    :try_start_a
    new-instance v0, Lcom/android/commands/hid/Event$Reader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/commands/hid/Event$Reader;-><init>(Ljava/io/InputStreamReader;)V

    iput-object v0, p0, Lcom/android/commands/hid/Hid;->mReader:Lcom/android/commands/hid/Event$Reader;
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_18} :catch_1a

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_1a
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static error(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 126
    const-string v0, "HID"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p1, :cond_e

    .line 128
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_e
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 42
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 43
    invoke-static {}, Lcom/android/commands/hid/Hid;->usage()V

    .line 44
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 47
    :cond_a
    const/4 v0, 0x0

    .line 49
    .local v0, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_c
    aget-object v3, p0, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 50
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v0, v2

    goto :goto_28

    .line 52
    :cond_1a
    new-instance v3, Ljava/io/File;

    aget-object v2, p0, v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 53
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 55
    .end local v2    # "f":Ljava/io/File;
    :goto_28
    new-instance v2, Lcom/android/commands/hid/Hid;

    invoke-direct {v2, v0}, Lcom/android/commands/hid/Hid;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2}, Lcom/android/commands/hid/Hid;->run()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_30} :catch_33
    .catchall {:try_start_c .. :try_end_30} :catchall_31

    goto :goto_3c

    .line 60
    :catchall_31
    move-exception v1

    goto :goto_41

    .line 56
    :catch_33
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    :try_start_34
    const-string v3, "HID injection failed."

    invoke-static {v3, v2}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :goto_41
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 61
    throw v1
.end method

.method private process(Lcom/android/commands/hid/Event;)V
    .registers 7
    .param p1, "e"    # Lcom/android/commands/hid/Event;

    .line 89
    iget-object v0, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 90
    .local v0, "index":I
    const-string v1, "register"

    if-ltz v0, :cond_8a

    .line 91
    iget-object v2, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/hid/Device;

    .line 92
    .local v2, "d":Lcom/android/commands/hid/Device;
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "delay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 93
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getDuration()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/commands/hid/Device;->addDelay(I)V

    goto :goto_89

    .line 94
    :cond_2a
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "report"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 95
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getReport()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/commands/hid/Device;->sendReport([B)V

    goto :goto_89

    .line 97
    :cond_3e
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is already registered. Ignoring event."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;)V

    goto :goto_89

    .line 100
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\". Ignoring event."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;)V

    .line 103
    .end local v2    # "d":Lcom/android/commands/hid/Device;
    :goto_89
    goto :goto_9f

    :cond_8a
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 104
    invoke-direct {p0, p1}, Lcom/android/commands/hid/Hid;->registerDevice(Lcom/android/commands/hid/Event;)V

    goto :goto_9f

    .line 106
    :cond_98
    const-string v1, "HID"

    const-string v2, "Unknown device id specified. Ignoring event."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_9f
    return-void
.end method

.method private registerDevice(Lcom/android/commands/hid/Event;)V
    .registers 14
    .param p1, "e"    # Lcom/android/commands/hid/Event;

    .line 111
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 115
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getId()I

    move-result v0

    .line 116
    .local v0, "id":I
    new-instance v11, Lcom/android/commands/hid/Device;

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getVendorId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getProductId()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getBus()I

    move-result v6

    .line 117
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getDescriptor()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getReport()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getFeatureReports()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getOutputs()Ljava/util/Map;

    move-result-object v10

    move-object v1, v11

    move v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/commands/hid/Device;-><init>(ILjava/lang/String;III[B[BLandroid/util/SparseArray;Ljava/util/Map;)V

    .line 118
    .local v1, "d":Lcom/android/commands/hid/Device;
    iget-object v2, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    return-void

    .line 112
    .end local v0    # "id":I
    .end local v1    # "d":Lcom/android/commands/hid/Device;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to send command \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {p1}, Lcom/android/commands/hid/Event;->getCommand()Ljava/lang/String;

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

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "e":Lcom/android/commands/hid/Event;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/hid/Hid;->mReader:Lcom/android/commands/hid/Event$Reader;

    invoke-virtual {v1}, Lcom/android/commands/hid/Event$Reader;->getNextEvent()Lcom/android/commands/hid/Event;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_e

    .line 77
    invoke-direct {p0, v0}, Lcom/android/commands/hid/Hid;->process(Lcom/android/commands/hid/Event;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_f

    goto :goto_1

    .line 81
    .end local v0    # "e":Lcom/android/commands/hid/Event;
    :cond_e
    goto :goto_15

    .line 79
    :catch_f
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "Error reading in events."

    invoke-static {v1, v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 83
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 84
    iget-object v1, p0, Lcom/android/commands/hid/Hid;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/hid/Device;

    invoke-virtual {v1}, Lcom/android/commands/hid/Device;->close()V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 86
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method private static usage()V
    .registers 1

    .line 38
    const-string v0, "Usage: hid [FILE]"

    invoke-static {v0}, Lcom/android/commands/hid/Hid;->error(Ljava/lang/String;)V

    .line 39
    return-void
.end method
