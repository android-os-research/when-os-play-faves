.class public abstract Lcom/samsung/android/app/ISemDualAppManager$Stub;
.super Landroid/os/Binder;
.source "ISemDualAppManager.java"

# interfaces
.implements Lcom/samsung/android/app/ISemDualAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/ISemDualAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAllInstalledWhitelistedPackages:I = 0x1

.field static final blacklist TRANSACTION_getAllWhitelistedPackages:I = 0x3

.field static final blacklist TRANSACTION_isInstalledWhitelistedPackage:I = 0x2

.field static final blacklist TRANSACTION_updateDualAppData:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.samsung.android.app.ISemDualAppManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "com.samsung.android.app.ISemDualAppManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/app/ISemDualAppManager;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/ISemDualAppManager;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_12

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string/jumbo v0, "updateDualAppData"

    return-object v0

    .line 74
    :pswitch_9
    const-string v0, "getAllWhitelistedPackages"

    return-object v0

    .line 70
    :pswitch_c
    const-string v0, "isInstalledWhitelistedPackage"

    return-object v0

    .line 66
    :pswitch_f
    const-string v0, "getAllInstalledWhitelistedPackages"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 247
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "com.samsung.android.app.ISemDualAppManager"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_64

    .line 105
    packed-switch p1, :pswitch_data_6a

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 134
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 139
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 141
    .local v5, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_62

    .line 126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v5    # "_result":Landroid/os/Bundle;
    :pswitch_3a
    invoke-virtual {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 129
    goto :goto_62

    .line 117
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v3

    .line 120
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    goto :goto_62

    .line 109
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_57
    invoke-virtual {p0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 112
    nop

    .line 150
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_62
    return v1

    nop

    :pswitch_data_64
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_57
        :pswitch_45
        :pswitch_3a
        :pswitch_1c
    .end packed-switch
.end method
