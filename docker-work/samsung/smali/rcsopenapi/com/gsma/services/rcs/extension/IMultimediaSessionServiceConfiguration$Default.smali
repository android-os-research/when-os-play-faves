.class public Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Default;
.super Ljava/lang/Object;
.source "IMultimediaSessionServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInactivityTimeout()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMessageMaxLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagingSessionInactivityTimeout(Ljava/lang/String;)J
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .registers 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return v0
.end method
