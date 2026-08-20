.class public Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkWatchlistShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 51
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x68c30bf2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_26

    const v3, 0x6e84e1aa

    if-eq v2, v3, :cond_1c

    goto :goto_31

    :cond_1c
    const-string v2, "force-generate-report"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    move v2, v4

    goto :goto_32

    :cond_26
    const-string/jumbo v2, "set-test-config"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    move v2, v1

    :goto_32
    if-eqz v2, :cond_40

    if-eq v2, v4, :cond_3b

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 55
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runForceGenerateReport()I

    move-result p0

    return p0

    .line 53
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runSetTestConfig()I

    move-result p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_44} :catch_45

    return p0

    :catch_45
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onHelp()V
    .registers 2

    .line 112
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Network watchlist manager commands:"

    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 114
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 115
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-test-config your_watchlist_config.xml"

    .line 116
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Set network watchlist test config file."

    .line 117
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-generate-report"

    .line 118
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force generate watchlist test report."

    .line 119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runForceGenerateReport()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, -0x1

    .line 93
    :try_start_9
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string p0, "Error: Cannot force generate report under production config"

    .line 94
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_3f
    .catchall {:try_start_9 .. :try_end_18} :catchall_3d

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 97
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "network_watchlist_last_report_time"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 99
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->forceReportWatchlistForTest(J)Z

    const-string p0, "Success!"

    .line 100
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_3f
    .catchall {:try_start_1c .. :try_end_38} :catchall_3d

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_3d
    move-exception p0

    goto :goto_58

    :catch_3f
    move-exception p0

    .line 102
    :try_start_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_3d

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p0
.end method

.method public final runSetTestConfig()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 71
    :try_start_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "r"

    .line 72
    invoke-virtual {p0, v2, v3}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_27

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: can\'t open input file "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 77
    :cond_27
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_47

    .line 78
    :try_start_2c
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistConfig;->setTestMode(Ljava/io/InputStream;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3d

    .line 79
    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string p0, "Success!"

    .line 80
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_47

    const/4 p0, 0x0

    return p0

    :catchall_3d
    move-exception p0

    .line 77
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v2

    :try_start_43
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_46
    throw p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_47

    :catch_47
    move-exception p0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method
