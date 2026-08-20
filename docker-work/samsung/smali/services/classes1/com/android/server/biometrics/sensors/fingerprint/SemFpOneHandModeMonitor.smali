.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;
.super Ljava/lang/Object;
.source "SemFpOneHandModeMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;
    }
.end annotation


# instance fields
.field public mContentObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mhandleContentChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->handleContentChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 39
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 47
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    return-void
.end method


# virtual methods
.method public final handleContentChanged()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;->isOneHandModeRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 71
    :cond_b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->onSemOnHandModeEnabled()V

    return-void
.end method

.method public final observe()V
    .registers 4

    .line 56
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    const-string v2, "any_screen_running"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->observe()V

    return-void
.end method
