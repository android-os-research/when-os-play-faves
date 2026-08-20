.class public Lcom/android/commands/svc/NfcCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "NfcCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    const-string v0, "nfc"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nusage: svc nfc [enable|disable]\n         Turn NFC on or off.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 45
    nop

    .line 46
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 48
    .local v0, "adapter":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_15

    .line 49
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Got a null NfcAdapter, is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    return-void

    .line 54
    :cond_15
    :try_start_15
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_28

    const-string v1, "enable"

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 55
    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enable()Z

    .line 56
    return-void

    .line 57
    :cond_28
    array-length v1, p1

    if-ne v1, v2, :cond_39

    const-string v1, "disable"

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 58
    invoke-interface {v0, v3}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_38} :catch_44

    .line 59
    return-void

    .line 64
    :cond_39
    nop

    .line 66
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/NfcCommand;->longHelp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    return-void

    .line 61
    :catch_44
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC operation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 32
    const-string v0, "Control NFC functions"

    return-object v0
.end method
