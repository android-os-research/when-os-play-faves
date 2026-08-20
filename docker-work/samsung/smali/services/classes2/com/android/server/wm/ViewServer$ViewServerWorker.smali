.class public Lcom/android/server/wm/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/wm/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewServerWorker"
.end annotation


# instance fields
.field public mClient:Ljava/net/Socket;

.field public mNeedFocusedWindowUpdate:Z

.field public mNeedWindowListUpdate:Z

.field public final synthetic this$0:Lcom/android/server/wm/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ViewServer;Ljava/net/Socket;)V
    .registers 3

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 217
    iput-boolean p1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    return-void
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    .line 288
    monitor-enter p0

    const/4 v0, 0x1

    .line 289
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 8

    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 224
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_be
    .catchall {:try_start_3 .. :try_end_15} :catchall_bc

    .line 226
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    const-string v3, ""

    goto :goto_31

    :cond_25
    const/4 v4, 0x0

    .line 236
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v4

    :goto_31
    const-string v4, "PROTOCOL"

    .line 241
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_37} :catch_ba
    .catchall {:try_start_15 .. :try_end_37} :catchall_de

    const-string v5, "4"

    if-eqz v4, :cond_42

    .line 242
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_94

    :cond_42
    const-string v4, "SERVER"

    .line 243
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 244
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-static {v3, v5}, Lcom/android/server/wm/ViewServer;->-$$Nest$smwriteValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    goto :goto_94

    :cond_51
    const-string v4, "LIST"

    .line 245
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 246
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_94

    :cond_66
    const-string v4, "GET_FOCUS"

    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 248
    iget-object v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v3}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v3

    goto :goto_94

    :cond_7b
    const-string v4, "AUTOLIST"

    .line 249
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v3

    goto :goto_94

    .line 252
    :cond_88
    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v4}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/wm/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :goto_94
    if-nez v3, :cond_aa

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred with the command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_aa} :catch_ba
    .catchall {:try_start_3b .. :try_end_aa} :catchall_de

    .line 264
    :cond_aa
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :goto_b2
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_dd

    .line 272
    :try_start_b6
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_d9

    goto :goto_dd

    :catch_ba
    move-exception v1

    goto :goto_c2

    :catchall_bc
    move-exception v0

    goto :goto_e0

    :catch_be
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_c2
    :try_start_c2
    const-string v3, "Connection error: "

    .line 260
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_de

    if-eqz v2, :cond_d1

    .line 264
    :try_start_c9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_d1

    :catch_cd
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :cond_d1
    :goto_d1
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_dd

    .line 272
    :try_start_d5
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_dd

    :catch_d9
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_dd
    :goto_dd
    return-void

    :catchall_de
    move-exception v0

    move-object v1, v2

    :goto_e0
    if-eqz v1, :cond_ea

    .line 264
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_ea

    :catch_e6
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    :cond_ea
    :goto_ea
    iget-object p0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz p0, :cond_f6

    .line 272
    :try_start_ee
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_f6

    :catch_f2
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 277
    :cond_f6
    :goto_f6
    throw v0
.end method

.method public final windowManagerAutolistLoop()Z
    .registers 6

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v0}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    :try_start_b
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_6f
    .catchall {:try_start_b .. :try_end_1b} :catchall_5f

    .line 299
    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_56

    .line 302
    monitor-enter p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_5d
    .catchall {:try_start_1b .. :try_end_22} :catchall_5a

    .line 303
    :goto_22
    :try_start_22
    iget-boolean v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v1, :cond_2e

    iget-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v3, :cond_2e

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_22

    :cond_2e
    const/4 v3, 0x0

    if-eqz v1, :cond_35

    .line 307
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    move v1, v0

    goto :goto_36

    :cond_35
    move v1, v3

    .line 310
    :goto_36
    iget-boolean v4, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v4, :cond_3d

    .line 311
    iput-boolean v3, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    move v3, v0

    .line 314
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_53

    if-eqz v1, :cond_48

    :try_start_40
    const-string v1, "LIST UPDATE\n"

    .line 316
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    :cond_48
    if-eqz v3, :cond_1b

    const-string v1, "ACTION_FOCUS UPDATE\n"

    .line 320
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_52} :catch_5d
    .catchall {:try_start_40 .. :try_end_52} :catchall_5a

    goto :goto_1b

    :catchall_53
    move-exception v1

    .line 314
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_5d
    .catchall {:try_start_55 .. :try_end_56} :catchall_5a

    .line 329
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_74

    goto :goto_74

    :catchall_5a
    move-exception v0

    move-object v1, v2

    goto :goto_60

    :catch_5d
    move-object v1, v2

    goto :goto_6f

    :catchall_5f
    move-exception v0

    :goto_60
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_65

    .line 334
    :catch_65
    :cond_65
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    .line 335
    throw v0

    :catch_6f
    :goto_6f
    if-eqz v1, :cond_74

    .line 329
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_74

    .line 334
    :catch_74
    :cond_74
    :goto_74
    iget-object v1, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/wm/ViewServer;

    invoke-static {v1}, Lcom/android/server/wm/ViewServer;->-$$Nest$fgetmWindowManager(Lcom/android/server/wm/ViewServer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V

    return v0
.end method

.method public windowsChanged()V
    .registers 2

    .line 281
    monitor-enter p0

    const/4 v0, 0x1

    .line 282
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 284
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
