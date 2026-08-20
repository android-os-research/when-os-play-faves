.class public Lcom/android/commands/svc/SystemServerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "SystemServerCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    const-string v0, "system-server"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private waitForCrash()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 44
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_12

    .line 45
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unable to get life monitor."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_12
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Waiting for the system server process to die..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    .line 50
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/SystemServerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: system-server wait-for-crash\n         Wait until the system server process crashes.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 55
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 56
    aget-object v0, p1, v1

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    :cond_e
    goto :goto_18

    :pswitch_f
    const-string v2, "wait-for-crash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    :goto_18
    packed-switch v1, :pswitch_data_36

    goto :goto_20

    .line 58
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/commands/svc/SystemServerCommand;->waitForCrash()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    .line 59
    return-void

    .line 64
    :cond_20
    :goto_20
    goto :goto_25

    .line 62
    :catch_21
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/SystemServerCommand;->longHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    return-void

    nop

    :pswitch_data_30
    .packed-switch -0x12fb90b5
        :pswitch_f
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
    .end packed-switch
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 31
    const-string v0, "System server process related command"

    return-object v0
.end method
