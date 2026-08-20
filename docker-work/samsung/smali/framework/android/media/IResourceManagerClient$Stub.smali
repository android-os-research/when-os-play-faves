.class public abstract Landroid/media/IResourceManagerClient$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerClient.java"

# interfaces
.implements Landroid/media/IResourceManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCodecState:I = 0x3

.field static final blacklist TRANSACTION_getName:I = 0x2

.field static final blacklist TRANSACTION_reclaimResource:I = 0x1

.field static final blacklist TRANSACTION_startWatchingMode:I = 0x4

.field static final blacklist TRANSACTION_stopWatchingMode:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    const-string v0, "android.media.IResourceManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    const-string v0, "android.media.IResourceManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IResourceManagerClient;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/media/IResourceManagerClient;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/media/IResourceManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IResourceManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 83
    packed-switch p0, :pswitch_data_16

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 103
    :pswitch_5
    const-string/jumbo v0, "stopWatchingMode"

    return-object v0

    .line 99
    :pswitch_9
    const-string/jumbo v0, "startWatchingMode"

    return-object v0

    .line 95
    :pswitch_d
    const-string v0, "getCodecState"

    return-object v0

    .line 91
    :pswitch_10
    const-string v0, "getName"

    return-object v0

    .line 87
    :pswitch_13
    const-string v0, "reclaimResource"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 281
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 114
    invoke-static {p1}, Landroid/media/IResourceManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 118
    const-string v0, "android.media.IResourceManagerClient"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_d
    packed-switch p1, :pswitch_data_46

    .line 130
    packed-switch p1, :pswitch_data_4c

    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 126
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    return v1

    .line 160
    :pswitch_1c
    invoke-virtual {p0}, Landroid/media/IResourceManagerClient$Stub;->stopWatchingMode()V

    .line 161
    goto :goto_45

    .line 155
    :pswitch_20
    invoke-virtual {p0}, Landroid/media/IResourceManagerClient$Stub;->startWatchingMode()V

    .line 156
    goto :goto_45

    .line 148
    :pswitch_24
    invoke-virtual {p0}, Landroid/media/IResourceManagerClient$Stub;->getCodecState()I

    move-result v2

    .line 149
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    goto :goto_45

    .line 141
    .end local v2    # "_result":I
    :pswitch_2f
    invoke-virtual {p0}, Landroid/media/IResourceManagerClient$Stub;->getName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    goto :goto_45

    .line 134
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p0}, Landroid/media/IResourceManagerClient$Stub;->reclaimResource()Z

    move-result v2

    .line 135
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    nop

    .line 168
    .end local v2    # "_result":Z
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
