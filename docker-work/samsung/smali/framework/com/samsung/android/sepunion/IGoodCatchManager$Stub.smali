.class public abstract Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;
.super Landroid/os/Binder;
.source "IGoodCatchManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/IGoodCatchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/IGoodCatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IGoodCatchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSelectedSettingKey:I = 0x3

.field static final blacklist TRANSACTION_registerListener:I = 0x1

.field static final blacklist TRANSACTION_update:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.samsung.android.sepunion.IGoodCatchManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGoodCatchManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_4
    const-string v0, "com.samsung.android.sepunion.IGoodCatchManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-eqz v1, :cond_14

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sepunion/IGoodCatchManager;

    return-object v1

    .line 47
    :cond_14
    new-instance v1, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_10

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_5
    const-string v0, "getSelectedSettingKey"

    return-object v0

    .line 64
    :pswitch_8
    const-string/jumbo v0, "update"

    return-object v0

    .line 60
    :pswitch_c
    const-string/jumbo v0, "registerListener"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 207
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 83
    const-string v0, "com.samsung.android.sepunion.IGoodCatchManager"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    packed-switch p1, :pswitch_data_54

    .line 95
    packed-switch p1, :pswitch_data_5a

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 123
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->getSelectedSettingKey()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 126
    goto :goto_53

    .line 115
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->update([Ljava/lang/String;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    goto :goto_53

    .line 100
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sepunion/IGoodCatchDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    move-result-object v4

    .line 106
    .local v4, "_arg2":Lcom/samsung/android/sepunion/IGoodCatchDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 107
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/samsung/android/sepunion/IGoodCatchDispatcher;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
