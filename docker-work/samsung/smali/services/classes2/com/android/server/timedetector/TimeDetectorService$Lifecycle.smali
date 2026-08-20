.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 70
    invoke-static {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;

    move-result-object v2

    .line 72
    invoke-static {v0, v1, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;

    move-result-object v2

    .line 74
    new-instance v3, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    const-string/jumbo v0, "time_detector"

    .line 79
    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
