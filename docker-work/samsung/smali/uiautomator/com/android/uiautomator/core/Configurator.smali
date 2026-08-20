.class public final Lcom/android/uiautomator/core/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sConfigurator:Lcom/android/uiautomator/core/Configurator;


# instance fields
.field private mKeyInjectionDelay:J

.field private mScrollEventWaitTimeout:J

.field private mWaitForActionAcknowledgment:J

.field private mWaitForIdleTimeout:J

.field private mWaitForSelector:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    .line 34
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    .line 35
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    .line 39
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Configurator;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    if-nez v0, :cond_b

    .line 59
    new-instance v0, Lcom/android/uiautomator/core/Configurator;

    invoke-direct {v0}, Lcom/android/uiautomator/core/Configurator;-><init>()V

    sput-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    .line 61
    :cond_b
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    return-object v0
.end method


# virtual methods
.method public getActionAcknowledgmentTimeout()J
    .registers 3

    .line 201
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    return-wide v0
.end method

.method public getKeyInjectionDelay()J
    .registers 3

    .line 225
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    return-wide v0
.end method

.method public getScrollAcknowledgmentTimeout()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    return-wide v0
.end method

.method public getWaitForIdleTimeout()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    return-wide v0
.end method

.method public getWaitForSelectorTimeout()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    return-wide v0
.end method

.method public setActionAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .registers 3
    .param p1, "timeout"    # J

    .line 184
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    .line 185
    return-object p0
.end method

.method public setKeyInjectionDelay(J)Lcom/android/uiautomator/core/Configurator;
    .registers 3
    .param p1, "delay"    # J

    .line 213
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    .line 214
    return-object p0
.end method

.method public setScrollAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .registers 3
    .param p1, "timeout"    # J

    .line 150
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    .line 151
    return-object p0
.end method

.method public setWaitForIdleTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .registers 3
    .param p1, "timeout"    # J

    .line 80
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    .line 81
    return-object p0
.end method

.method public setWaitForSelectorTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .registers 3
    .param p1, "timeout"    # J

    .line 116
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    .line 117
    return-object p0
.end method
