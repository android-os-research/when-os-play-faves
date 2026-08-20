.class public Lcom/log/handler/LogHandlerUtils;
.super Ljava/lang/Object;
.source "LogHandlerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/log/handler/LogHandlerUtils$AbnormalEvent;,
        Lcom/log/handler/LogHandlerUtils$IAbnormalEventMonitor;,
        Lcom/log/handler/LogHandlerUtils$ICSFWLogLevel;,
        Lcom/log/handler/LogHandlerUtils$BTFWLogLevel;,
        Lcom/log/handler/LogHandlerUtils$IModemEEMonitor;,
        Lcom/log/handler/LogHandlerUtils$ModemLogStatus;,
        Lcom/log/handler/LogHandlerUtils$ModemLogMode;,
        Lcom/log/handler/LogHandlerUtils$MobileSubLog;,
        Lcom/log/handler/LogHandlerUtils$ILogExecute;,
        Lcom/log/handler/LogHandlerUtils$WiFiLogLevel;,
        Lcom/log/handler/LogHandlerUtils$WiFiLogModule;,
        Lcom/log/handler/LogHandlerUtils$OnlyCfgLogType;,
        Lcom/log/handler/LogHandlerUtils$LogType;
    }
.end annotation


# static fields
.field public static final CATCH_DUMP:I = 0x2

.field public static final CATCH_LOG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LogHandler"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 459
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 460
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_d
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 497
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 511
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 473
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 445
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_d
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 485
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method
