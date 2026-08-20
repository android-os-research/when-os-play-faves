.class public interface abstract Lcom/android/server/servicewatcher/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;,
        Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 225
    new-instance v7, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V

    return-object v7
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;",
            "Lcom/android/server/location/injector/Injector;",
            ")",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 245
    new-instance v7, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V

    return-object v7
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;)",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TBoundServiceInfo:",
            "Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
            "TTBoundServiceInfo;>;",
            "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
            "-TTBoundServiceInfo;>;",
            "Lcom/android/server/location/injector/Injector;",
            ")",
            "Lcom/android/server/servicewatcher/ServiceWatcher;"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract checkServiceResolves()Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract register()V
.end method

.method public abstract runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
.end method

.method public abstract unregister()V
.end method
