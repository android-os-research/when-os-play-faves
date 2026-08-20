.class public abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;
.super Landroid/os/Binder;
.source "ISmartcardServiceReader.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_closeSessions:I = 0x3

.field static final TRANSACTION_isSecureElementPresent:I = 0x1

.field static final TRANSACTION_openSession:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceReader"

    invoke-virtual {p0, p0, v0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceReader"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const-string v0, "org.simalliance.openmobileapi.service.ISmartcardServiceReader"

    .line 74
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 85
    packed-switch p1, :pswitch_data_50

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 81
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v1

    .line 107
    :pswitch_1c
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 108
    .local v2, "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;->closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 111
    goto :goto_49

    .line 97
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    :pswitch_2b
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 98
    .restart local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    invoke-virtual {p0, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;->openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;

    move-result-object v3

    .line 99
    .local v3, "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 101
    # invokes: Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {p3, v2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 102
    goto :goto_49

    .line 89
    .end local v2    # "_arg0":Lorg/simalliance/openmobileapi/service/SmartcardError;
    .end local v3    # "_result":Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    :pswitch_3e
    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;->isSecureElementPresent()Z

    move-result v2

    .line 90
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    nop

    .line 118
    .end local v2    # "_result":Z
    :goto_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
