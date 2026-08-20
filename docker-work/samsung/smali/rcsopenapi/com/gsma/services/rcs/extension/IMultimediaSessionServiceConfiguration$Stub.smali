.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IMultimediaSessionServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInactivityTimeout:I = 0x2

.field static final TRANSACTION_getMessageMaxLength:I = 0x4

.field static final TRANSACTION_getMessagingSessionInactivityTimeout:I = 0x3

.field static final TRANSACTION_isServiceActivated:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
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

    .line 63
    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionServiceConfiguration"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    :cond_d
    packed-switch p1, :pswitch_data_58

    .line 75
    packed-switch p1, :pswitch_data_5e

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 71
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v1

    .line 106
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->getMessageMaxLength()I

    move-result v2

    .line 107
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    goto :goto_56

    .line 97
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->getMessagingSessionInactivityTimeout(Ljava/lang/String;)J

    move-result-wide v3

    .line 100
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    goto :goto_56

    .line 89
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_39
    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->getInactivityTimeout()J

    move-result-wide v2

    .line 90
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    goto :goto_56

    .line 80
    .end local v2    # "_result":J
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration$Stub;->isServiceActivated(Ljava/lang/String;)Z

    move-result v3

    .line 83
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 85
    nop

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_56
    return v1

    nop

    :pswitch_data_58
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_44
        :pswitch_39
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
