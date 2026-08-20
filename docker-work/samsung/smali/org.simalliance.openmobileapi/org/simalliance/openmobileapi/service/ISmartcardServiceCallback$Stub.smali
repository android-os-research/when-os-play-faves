.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceCallback.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceCallback"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    if-eqz v1, :cond_14

    .line 35
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    return-object v1

    .line 37
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceCallback"

    .line 46
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_10

    .line 54
    goto :goto_b

    .line 50
    :pswitch_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    return v1

    .line 58
    :goto_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_10
    .packed-switch 0x5f4e5446
        :pswitch_6
    .end packed-switch
.end method
