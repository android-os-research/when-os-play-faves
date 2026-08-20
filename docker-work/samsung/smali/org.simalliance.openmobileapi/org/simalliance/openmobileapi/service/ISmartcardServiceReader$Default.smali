.class public Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Default;
.super Ljava/lang/Object;
.source "ISmartcardServiceReader.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
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

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .registers 2
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public isSecureElementPresent()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .registers 3
    .param p1, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
