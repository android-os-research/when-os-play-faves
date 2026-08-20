.class public Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerProxy"
.end annotation


# static fields
.field public static final LOG_MSG:Ljava/lang/String; = "LOG_MSG"

.field public static final LOG_MSG_COMMAND:Ljava/lang/String; = "LOG_MSG_COMMAND"

.field public static mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    const-string v0, "DDLog"

    const-string v1, "Logger ready"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->createInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    if-nez v1, :cond_e

    .line 112
    new-instance v1, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;

    .line 114
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$LoggerProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 127
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p1, -0x1

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x6d6d3bb2

    if-eq v0, v1, :cond_10

    goto :goto_19

    :cond_10
    const-string v0, "LOG_MSG_COMMAND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    const/4 p1, 0x0

    :cond_19
    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_25

    :cond_1c
    const-string p1, "LOG_MSG"

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$smenqueLog(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    :goto_25
    return-object p0

    :catch_26
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
