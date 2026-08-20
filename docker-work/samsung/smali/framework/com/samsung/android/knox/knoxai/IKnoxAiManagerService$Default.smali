.class public Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService$Default;
.super Ljava/lang/Object;
.source "IKnoxAiManagerService.java"

# interfaces
.implements Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/knoxai/IKnoxAiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I
    .registers 3
    .param p1, "options"    # Lcom/samsung/android/knox/knoxai/TaLoaderOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V
    .registers 4
    .param p1, "command"    # I
    .param p2, "input"    # [Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    .param p3, "output"    # [Lcom/samsung/android/knox/knoxai/TaProcessBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist terminateTaSession()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method
