.class public Lcom/sec/ims/presence/IPresenceService$Default;
.super Ljava/lang/Object;
.source "IPresenceService.java"

# interfaces
.implements Lcom/sec/ims/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .registers 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;
    .registers 3
    .param p1, "contactId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
