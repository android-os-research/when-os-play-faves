.class public abstract Lcom/gsma/services/rcs/contact/IContactService$Stub;
.super Landroid/os/Binder;
.source "IContactService.java"

# interfaces
.implements Lcom/gsma/services/rcs/contact/IContactService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/contact/IContactService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_blockContact:I = 0x5

.field static final TRANSACTION_getRcsContact:I = 0x1

.field static final TRANSACTION_getRcsContacts:I = 0x2

.field static final TRANSACTION_getRcsContactsOnline:I = 0x3

.field static final TRANSACTION_getRcsContactsSupporting:I = 0x4

.field static final TRANSACTION_unblockContact:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/contact/IContactService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/contact/IContactService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
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

    .line 67
    const-string v0, "com.gsma.services.rcs.contact.IContactService"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_d
    packed-switch p1, :pswitch_data_80

    .line 79
    packed-switch p1, :pswitch_data_86

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 127
    :pswitch_1c
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 128
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_7e

    .line 118
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_2e
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 119
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_7e

    .line 108
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 111
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 113
    goto :goto_7e

    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_52
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContactsOnline()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 103
    goto :goto_7e

    .line 93
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_5d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContacts()Ljava/util/List;

    move-result-object v2

    .line 94
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    goto :goto_7e

    .line 84
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/gsma/services/rcs/contact/RcsContact;>;"
    :pswitch_68
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 85
    .local v2, "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/contact/IContactService$Stub;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;

    move-result-object v3

    .line 87
    .local v3, "_result":Lcom/gsma/services/rcs/contact/RcsContact;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    nop

    .line 138
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_result":Lcom/gsma/services/rcs/contact/RcsContact;
    :goto_7e
    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_68
        :pswitch_5d
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
