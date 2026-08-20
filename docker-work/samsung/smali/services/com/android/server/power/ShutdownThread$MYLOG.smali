.class public Lcom/android/server/power/ShutdownThread$MYLOG;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MYLOG"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1371
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_a

    .line 1372
    :try_start_4
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->wirteLogFileWriter(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    const/4 p0, -0x1

    .line 1374
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1376
    :goto_f
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetdlgAnim()Lcom/android/server/power/ShutdownDialog;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetBIN_TYPE_USER()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1380
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 1381
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const/16 v5, 0xb

    .line 1382
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const/16 v5, 0xc

    .line 1383
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const/16 v5, 0xd

    .line 1384
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xe

    .line 1385
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x6

    const-string v3, "ShutdownThread"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    aput-object p1, v2, v1

    const-string p1, "%02d-%02d %02d:%02d:%02d.%03d %s: %s\n"

    .line 1379
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetdlgAnim()Lcom/android/server/power/ShutdownDialog;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/power/ShutdownDialog;->appendTextLog(Ljava/lang/String;)V

    :cond_8f
    return p0
.end method
