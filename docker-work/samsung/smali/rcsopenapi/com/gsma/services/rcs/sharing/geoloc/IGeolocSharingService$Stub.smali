.class public abstract Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;
.super Landroid/os/Binder;
.source "IGeolocSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x7

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_deleteAllGeolocSharings:I = 0xa

.field static final TRANSACTION_deleteGeolocSharingBySharingId:I = 0xc

.field static final TRANSACTION_deleteGeolocSharingsByContactId:I = 0xb

.field static final TRANSACTION_getGeolocSharing:I = 0x5

.field static final TRANSACTION_getGeolocSharings:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0x9

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x8

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_shareGeoloc:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const-string v0, "com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    packed-switch p1, :pswitch_data_e2

    .line 98
    packed-switch p1, :pswitch_data_e8

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 94
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 197
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->deleteGeolocSharingBySharingId(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_e1

    .line 188
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2b
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 189
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto/16 :goto_e1

    .line 181
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_3e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->deleteAllGeolocSharings()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto/16 :goto_e1

    .line 174
    :pswitch_46
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->getServiceVersion()I

    move-result v2

    .line 175
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    goto/16 :goto_e1

    .line 166
    .end local v2    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto/16 :goto_e1

    .line 157
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_e1

    .line 145
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    :pswitch_77
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 147
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v3, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/Geoloc;

    .line 148
    .local v3, "_arg1":Lcom/gsma/services/rcs/Geoloc;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v4

    .line 150
    .local v4, "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 152
    goto :goto_e1

    .line 135
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/Geoloc;
    .end local v4    # "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v3

    .line 138
    .local v3, "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 140
    goto :goto_e1

    .line 127
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :pswitch_a7
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->getGeolocSharings()Ljava/util/List;

    move-result-object v2

    .line 128
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 130
    goto :goto_e1

    .line 119
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_e1

    .line 110
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 111
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_e1

    .line 102
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_d6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 103
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 105
    nop

    .line 208
    .end local v2    # "_result":Z
    :goto_e1
    return v1

    :pswitch_data_e2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_c4
        :pswitch_b2
        :pswitch_a7
        :pswitch_95
        :pswitch_77
        :pswitch_65
        :pswitch_52
        :pswitch_46
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
