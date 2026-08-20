.class public Lcom/android/server/wm/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ViewServer$ViewServerWorker;
    }
.end annotation


# static fields
.field public static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field public static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field public static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field public static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field public static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field public static final LOG_TAG:Ljava/lang/String; = "WindowManager"

.field public static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field public static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field public static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa


# instance fields
.field public final mPort:I

.field public mServer:Ljava/net/ServerSocket;

.field public mThread:Ljava/lang/Thread;

.field public mThreadPool:Ljava/util/concurrent/ExecutorService;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smwriteValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/ViewServer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 89
    iput p2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    return-void
.end method

.method public static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 190
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 p0, 0x2000

    invoke-direct {v2, v3, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_2f
    .catchall {:try_start_2 .. :try_end_12} :catchall_28

    .line 191
    :try_start_12
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string p0, "\n"

    .line 192
    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_26
    .catchall {:try_start_12 .. :try_end_1d} :catchall_23

    const/4 p0, 0x1

    .line 200
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_34

    move v0, p0

    goto :goto_34

    :catchall_23
    move-exception p0

    move-object v1, v2

    goto :goto_29

    :catch_26
    move-object v1, v2

    goto :goto_2f

    :catchall_28
    move-exception p0

    :goto_29
    if-eqz v1, :cond_2e

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2e

    .line 205
    :catch_2e
    :cond_2e
    throw p0

    :catch_2f
    :goto_2f
    if-eqz v1, :cond_34

    .line 200
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return v0
.end method


# virtual methods
.method public isRunning()Z
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public run()V
    .registers 4

    .line 166
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2d

    .line 169
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1b

    .line 171
    new-instance v2, Lcom/android/server/wm/ViewServer$ViewServerWorker;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;-><init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_24

    goto :goto_0

    .line 174
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_24

    goto :goto_0

    :catch_1f
    move-exception v0

    .line 176
    :try_start_20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_0

    :catch_24
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Connection error: "

    .line 180
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2d
    return-void
.end method

.method public start()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_6
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    .line 109
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 110
    iget-object p0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public stop()Z
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_29

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const-string v1, "WindowManager"

    if-eqz v0, :cond_16

    .line 131
    :try_start_d
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    const-string v0, "Could not stop all view server threads"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 137
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mThread:Ljava/lang/Thread;

    .line 139
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 140
    iput-object v0, p0, Lcom/android/server/wm/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_24

    const/4 p0, 0x1

    return p0

    :catch_24
    const-string p0, "Could not close the view server"

    .line 143
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 p0, 0x0

    return p0
.end method
