.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final greylist-max-o TRANSACTION_onPackageAdded:I = 0x2

.field static final greylist-max-o TRANSACTION_onPackageChanged:I = 0x3

.field static final blacklist TRANSACTION_onPackageLoadingProgressChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onPackageRemoved:I = 0x1

.field static final greylist-max-o TRANSACTION_onPackagesAvailable:I = 0x4

.field static final greylist-max-o TRANSACTION_onPackagesSuspended:I = 0x6

.field static final greylist-max-o TRANSACTION_onPackagesUnavailable:I = 0x5

.field static final greylist-max-o TRANSACTION_onPackagesUnsuspended:I = 0x7

.field static final greylist-max-o TRANSACTION_onShortcutChanged:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_2a

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 109
    :pswitch_5
    const-string/jumbo v0, "onPackageLoadingProgressChanged"

    return-object v0

    .line 105
    :pswitch_9
    const-string/jumbo v0, "onShortcutChanged"

    return-object v0

    .line 101
    :pswitch_d
    const-string/jumbo v0, "onPackagesUnsuspended"

    return-object v0

    .line 97
    :pswitch_11
    const-string/jumbo v0, "onPackagesSuspended"

    return-object v0

    .line 93
    :pswitch_15
    const-string/jumbo v0, "onPackagesUnavailable"

    return-object v0

    .line 89
    :pswitch_19
    const-string/jumbo v0, "onPackagesAvailable"

    return-object v0

    .line 85
    :pswitch_1d
    const-string/jumbo v0, "onPackageChanged"

    return-object v0

    .line 81
    :pswitch_21
    const-string/jumbo v0, "onPackageAdded"

    return-object v0

    .line 77
    :pswitch_25
    const-string/jumbo v0, "onPackageRemoved"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 396
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 120
    invoke-static {p1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 124
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    .line 125
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    :cond_d
    packed-switch p1, :pswitch_data_e8

    .line 136
    packed-switch p1, :pswitch_data_ee

    .line 240
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 132
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v1

    .line 229
    :pswitch_1c
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 231
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 234
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V

    .line 236
    goto/16 :goto_e6

    .line 217
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":F
    :pswitch_34
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 219
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 222
    .local v4, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 224
    goto/16 :goto_e6

    .line 207
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_50
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 209
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 212
    goto/16 :goto_e6

    .line 195
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_64
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 197
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 199
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 200
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    goto :goto_e6

    .line 183
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_7f
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 185
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 188
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 190
    goto :goto_e6

    .line 171
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_96
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 173
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 176
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 178
    goto :goto_e6

    .line 161
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_ad
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 163
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 166
    goto :goto_e6

    .line 151
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c0
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 153
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 156
    goto :goto_e6

    .line 141
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d3
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 143
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 146
    nop

    .line 243
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_e6
    return v1

    nop

    :pswitch_data_e8
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_c0
        :pswitch_ad
        :pswitch_96
        :pswitch_7f
        :pswitch_64
        :pswitch_50
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method
