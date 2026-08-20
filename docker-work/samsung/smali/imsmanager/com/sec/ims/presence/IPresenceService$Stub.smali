.class public abstract Lcom/sec/ims/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/sec/ims/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getOwnPresenceInfo:I = 0x1

.field static final TRANSACTION_getPresenceInfo:I = 0x2

.field static final TRANSACTION_getPresenceInfoByContactId:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.sec.ims.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/presence/IPresenceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.sec.ims.presence.IPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/presence/IPresenceService;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/presence/IPresenceService;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/sec/ims/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    const-string v0, "com.sec.ims.presence.IPresenceService"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_d
    packed-switch p1, :pswitch_data_50

    .line 68
    packed-switch p1, :pswitch_data_56

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 90
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 92
    invoke-virtual {p0, v2}, Lcom/sec/ims/presence/IPresenceService$Stub;->getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v3

    .line 93
    .local v3, "_result":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 95
    goto :goto_4f

    .line 80
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/sec/ims/presence/PresenceInfo;
    :pswitch_2e
    sget-object v2, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 81
    .local v2, "_arg0":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/sec/ims/presence/IPresenceService$Stub;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v3

    .line 83
    .restart local v3    # "_result":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 85
    goto :goto_4f

    .line 72
    .end local v2    # "_arg0":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "_result":Lcom/sec/ims/presence/PresenceInfo;
    :pswitch_44
    invoke-virtual {p0}, Lcom/sec/ims/presence/IPresenceService$Stub;->getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    .line 73
    .local v2, "_result":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 75
    nop

    .line 102
    .end local v2    # "_result":Lcom/sec/ims/presence/PresenceInfo;
    :goto_4f
    return v1

    :pswitch_data_50
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_44
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
