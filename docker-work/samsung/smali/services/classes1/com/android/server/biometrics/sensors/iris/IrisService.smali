.class public Lcom/android/server/biometrics/sensors/iris/IrisService;
.super Lcom/android/server/SystemService;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IrisService"


# instance fields
.field public final mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmServiceWrapper(Lcom/android/server/biometrics/sensors/iris/IrisService;)Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance p1, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper-IA;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    const-string/jumbo v1, "iris"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
