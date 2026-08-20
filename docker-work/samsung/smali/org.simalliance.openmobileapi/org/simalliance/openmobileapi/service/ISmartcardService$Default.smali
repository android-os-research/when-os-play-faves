.class public Lorg/simalliance/openmobileapi/service/ISmartcardService$Default;
.super Ljava/lang/Object;
.source "ISmartcardService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
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

.method public getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .registers 4
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReaders()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z
    .registers 7
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "packageNames"    # [Ljava/lang/String;
    .param p4, "callback"    # Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .param p5, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
