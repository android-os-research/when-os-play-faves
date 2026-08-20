.class public Lcom/android/server/adb/AdbShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "AdbShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Lcom/android/server/adb/AdbService;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/adb/AdbService;

    iput-object p1, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 41
    :cond_8
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "is-wifi-qr-supported"

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_32

    const-string/jumbo v1, "is-wifi-supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 44
    :cond_24
    iget-object p0, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 48
    :cond_32
    iget-object p0, p0, Lcom/android/server/adb/AdbShellCommand;->mService:Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiQrSupported()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2
.end method

.method public onHelp()V
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Adb service commands:"

    .line 59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help or -h"

    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-wifi-supported"

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns \"true\" if adb over wifi is supported."

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-wifi-qr-supported"

    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns \"true\" if adb over wifi + QR pairing is supported."

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
