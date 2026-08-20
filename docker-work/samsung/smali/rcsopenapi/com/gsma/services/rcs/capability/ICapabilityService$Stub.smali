.class public abstract Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addCapabilitiesListener:I = 0x8

.field static final TRANSACTION_addContactCapabilitiesListener:I = 0xa

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_getContactCapabilities:I = 0x5

.field static final TRANSACTION_getMyCapabilities:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeCapabilitiesListener:I = 0x9

.field static final TRANSACTION_removeContactCapabilitiesListener:I = 0xb

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_requestAllContactsCapabilities:I = 0x7

.field static final TRANSACTION_requestContactCapabilities:I = 0x6

.field static final TRANSACTION_setUserActive:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilityService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    const-string v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    packed-switch p1, :pswitch_data_fc

    .line 100
    packed-switch p1, :pswitch_data_102

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 209
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 210
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->setUserActive(Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    goto/16 :goto_fb

    .line 201
    .end local v2    # "_arg0":Z
    :pswitch_2b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getServiceVersion()I

    move-result v2

    .line 202
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    goto/16 :goto_fb

    .line 191
    .end local v2    # "_result":I
    :pswitch_37
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 193
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v3

    .line 194
    .local v3, "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_fb

    .line 180
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_52
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 182
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v3

    .line 183
    .restart local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto/16 :goto_fb

    .line 171
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 172
    .local v2, "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto/16 :goto_fb

    .line 162
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_fb

    .line 155
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    :pswitch_92
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestAllContactsCapabilities()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_fb

    .line 147
    :pswitch_99
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 148
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_fb

    .line 137
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_ab
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 138
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    .line 140
    .local v3, "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    goto :goto_fb

    .line 129
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    :pswitch_c1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    .line 130
    .local v2, "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 132
    goto :goto_fb

    .line 121
    .end local v2    # "_result":Lcom/gsma/services/rcs/capability/Capabilities;
    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 122
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    goto :goto_fb

    .line 112
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 113
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    goto :goto_fb

    .line 104
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_f0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 105
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 107
    nop

    .line 220
    .end local v2    # "_result":Z
    :goto_fb
    return v1

    :pswitch_data_fc
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_de
        :pswitch_cc
        :pswitch_c1
        :pswitch_ab
        :pswitch_99
        :pswitch_92
        :pswitch_80
        :pswitch_6d
        :pswitch_52
        :pswitch_37
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
