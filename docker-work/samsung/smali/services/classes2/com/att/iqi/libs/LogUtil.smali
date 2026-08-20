.class public Lcom/att/iqi/libs/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static LOG_TAG:Ljava/lang/String; = "IQIConcierge"

.field public static sDebug:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canLog()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return v0
.end method

.method public static enableLogging(Z)V
    .registers 1

    .line 46
    sput-boolean p0, Lcom/att/iqi/libs/LogUtil;->sDebug:Z

    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .registers 2

    .line 30
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 34
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .registers 2

    .line 22
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 26
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .registers 2

    .line 38
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 42
    sget-object v0, Lcom/att/iqi/libs/LogUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
