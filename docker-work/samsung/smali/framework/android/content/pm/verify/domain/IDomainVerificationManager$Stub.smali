.class public abstract Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;
.super Landroid/os/Binder;
.source "IDomainVerificationManager.java"

# interfaces
.implements Landroid/content/pm/verify/domain/IDomainVerificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/domain/IDomainVerificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDomainVerificationInfo:I = 0x2

.field static final blacklist TRANSACTION_getDomainVerificationUserState:I = 0x3

.field static final blacklist TRANSACTION_getOwnersForDomain:I = 0x4

.field static final blacklist TRANSACTION_queryValidVerificationPackageNames:I = 0x1

.field static final blacklist TRANSACTION_setDomainVerificationLinkHandlingAllowed:I = 0x6

.field static final blacklist TRANSACTION_setDomainVerificationStatus:I = 0x5

.field static final blacklist TRANSACTION_setDomainVerificationUserSelection:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/pm/verify/domain/IDomainVerificationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/content/pm/verify/domain/IDomainVerificationManager;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1e

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_5
    const-string/jumbo v0, "setDomainVerificationUserSelection"

    return-object v0

    .line 100
    :pswitch_9
    const-string/jumbo v0, "setDomainVerificationLinkHandlingAllowed"

    return-object v0

    .line 96
    :pswitch_d
    const-string/jumbo v0, "setDomainVerificationStatus"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "getOwnersForDomain"

    return-object v0

    .line 88
    :pswitch_14
    const-string v0, "getDomainVerificationUserState"

    return-object v0

    .line 84
    :pswitch_17
    const-string v0, "getDomainVerificationInfo"

    return-object v0

    .line 80
    :pswitch_1a
    const-string/jumbo v0, "queryValidVerificationPackageNames"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 381
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 115
    invoke-static {p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    const-string v0, "android.content.pm.verify.domain.IDomainVerificationManager"

    .line 120
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    :cond_d
    packed-switch p1, :pswitch_data_be

    .line 131
    packed-switch p1, :pswitch_data_c4

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v1

    .line 204
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/verify/domain/DomainSet;

    .line 208
    .local v3, "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 210
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 211
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v6

    .line 213
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    goto/16 :goto_bc

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 195
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_bc

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/verify/domain/DomainSet;

    .line 181
    .local v3, "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 182
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v5

    .line 184
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    goto :goto_bc

    .line 165
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/content/pm/verify/domain/DomainSet;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 170
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 172
    goto :goto_bc

    .line 153
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v4

    .line 158
    .local v4, "_result":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_bc

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v3

    .line 146
    .local v3, "_result":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 148
    goto :goto_bc

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    :pswitch_b1
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/IDomainVerificationManager$Stub;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 138
    nop

    .line 222
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_bc
    return v1

    nop

    :pswitch_data_be
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_9f
        :pswitch_89
        :pswitch_73
        :pswitch_55
        :pswitch_3f
        :pswitch_1c
    .end packed-switch
.end method
