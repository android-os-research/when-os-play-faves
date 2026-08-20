.class public Lcom/android/server/adb/AdbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public mAdbService:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 115
    iget-object p0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->systemReady()V

    goto :goto_20

    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_20

    .line 117
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/adb/AdbService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/adb/AdbService$Lifecycle$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    :goto_20
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 108
    new-instance v0, Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;Lcom/android/server/adb/AdbService-IA;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    const-string v1, "adb"

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
