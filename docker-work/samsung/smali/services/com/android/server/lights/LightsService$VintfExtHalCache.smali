.class public Lcom/android/server/lights/LightsService$VintfExtHalCache;
.super Ljava/lang/Object;
.source "LightsService.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VintfExtHalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lvendor/samsung/hardware/light/ISehLights;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public mInstance:Lvendor/samsung/hardware/light/ISehLights;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 905
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService$VintfExtHalCache-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$VintfExtHalCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 927
    :try_start_2
    iput-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 928
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 904
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$VintfExtHalCache;->get()Lvendor/samsung/hardware/light/ISehLights;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized get()Lvendor/samsung/hardware/light/ISehLights;
    .registers 4

    monitor-enter p0

    .line 910
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    if-nez v0, :cond_38

    const-string v0, "android.hardware.light.ILights/default"

    .line 911
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_3c

    if-eqz v0, :cond_38

    .line 915
    :try_start_11
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/light/ISehLights$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    const/4 v1, 0x0

    .line 916
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_20
    .catchall {:try_start_11 .. :try_end_1f} :catchall_3c

    goto :goto_38

    :catch_20
    :try_start_20
    const-string v0, "LightsService"

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/server/lights/LightsService$VintfExtHalCache;->mInstance:Lvendor/samsung/hardware/light/ISehLights;
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
