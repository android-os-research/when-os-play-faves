.class public Lcom/samsung/android/mateservice/IAgentService$Default;
.super Ljava/lang/Object;
.source "IAgentService.java"

# interfaces
.implements Lcom/samsung/android/mateservice/IAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mateservice/IAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist executeSysAction(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
