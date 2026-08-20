.class public Lcom/android/server/power/ShutdownThread$Led;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Led"
.end annotation


# direct methods
.method public static bridge synthetic -$$Nest$smOn()V
    .registers 0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->On()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Off()V
    .registers 1

    const/4 v0, 0x6

    .line 1010
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method public static On()V
    .registers 1

    const/4 v0, 0x6

    .line 1006
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Led;->fileWriteInt(I)V

    return-void
.end method

.method public static fileWriteInt(I)V
    .registers 7

    const-string/jumbo v0, "led file close error"

    const-string v1, "ShutdownThread"

    .line 1014
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/led/led_pattern"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const-string v4, "LED"

    if-nez v3, :cond_1a

    const-string p0, "!@LED File is not exist"

    .line 1016
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    const/4 v3, 0x0

    .line 1022
    :try_start_1b
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_3b
    .catchall {:try_start_1b .. :try_end_20} :catchall_39

    .line 1023
    :try_start_20
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_37
    .catchall {:try_start_20 .. :try_end_2b} :catchall_34

    .line 1030
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_45

    :catch_2f
    move-exception p0

    .line 1033
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    :catchall_34
    move-exception p0

    move-object v3, v5

    goto :goto_46

    :catch_37
    move-object v3, v5

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_46

    :catch_3b
    :goto_3b
    :try_start_3b
    const-string p0, "!@Exception has raised while file write"

    .line 1025
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_39

    if-eqz v3, :cond_45

    .line 1030
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_2f

    :cond_45
    :goto_45
    return-void

    :goto_46
    if-eqz v3, :cond_50

    :try_start_48
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v2

    .line 1033
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    :cond_50
    :goto_50
    throw p0
.end method
