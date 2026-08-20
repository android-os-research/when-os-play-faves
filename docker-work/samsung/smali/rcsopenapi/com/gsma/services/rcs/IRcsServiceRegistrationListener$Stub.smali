.class public abstract Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IRcsServiceRegistrationListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onServiceRegistered:I = 0x1

.field static final TRANSACTION_onServiceUnregistered:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    :cond_d
    packed-switch p1, :pswitch_data_36

    .line 63
    packed-switch p1, :pswitch_data_3c

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 59
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 74
    :pswitch_1c
    sget-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 75
    .local v2, "_arg0":Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    goto :goto_35

    .line 67
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    :pswitch_2e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceRegistered()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    nop

    .line 85
    :goto_35
    return v1

    :pswitch_data_36
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
