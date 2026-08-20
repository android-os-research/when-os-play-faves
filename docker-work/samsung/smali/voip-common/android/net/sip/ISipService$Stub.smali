.class public abstract Landroid/net/sip/ISipService$Stub;
.super Landroid/os/Binder;
.source "ISipService.java"

# interfaces
.implements Landroid/net/sip/ISipService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/ISipService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.sip.ISipService"

.field static final greylist-max-o TRANSACTION_close:I = 0x3

.field static final greylist-max-o TRANSACTION_createSession:I = 0x7

.field static final greylist-max-o TRANSACTION_getPendingSession:I = 0x8

.field static final blacklist TRANSACTION_getProfiles:I = 0x9

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final greylist-max-o TRANSACTION_isRegistered:I = 0x5

.field static final greylist-max-o TRANSACTION_open:I = 0x1

.field static final greylist-max-o TRANSACTION_open3:I = 0x2

.field static final greylist-max-o TRANSACTION_setRegistrationListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.net.sip.ISipService"

    invoke-virtual {p0, p0, v0}, Landroid/net/sip/ISipService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.net.sip.ISipService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/sip/ISipService;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/net/sip/ISipService;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/net/sip/ISipService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/sip/ISipService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
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

    .line 77
    const-string v0, "android.net.sip.ISipService"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    packed-switch p1, :pswitch_data_100

    .line 89
    packed-switch p1, :pswitch_data_106

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 85
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 194
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/net/sip/ISipService$Stub;->getProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 199
    goto/16 :goto_fe

    .line 182
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->getPendingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v4

    .line 187
    .local v4, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 189
    goto/16 :goto_fe

    .line 168
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/sip/ISipSession;
    :pswitch_46
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 170
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    .line 172
    .local v3, "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipService$Stub;->createSession(Landroid/net/sip/SipProfile;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)Landroid/net/sip/ISipSession;

    move-result-object v5

    .line 175
    .local v5, "_result":Landroid/net/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 177
    goto/16 :goto_fe

    .line 155
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/net/sip/ISipSession;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v3

    .line 159
    .restart local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/sip/ISipService$Stub;->setRegistrationListener(Ljava/lang/String;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto/16 :goto_fe

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/sip/ISipSessionListener;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 148
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_fe

    .line 131
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->isOpened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 136
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 138
    goto :goto_fe

    .line 120
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->close(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_fe

    .line 105
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_c2
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 107
    .local v2, "_arg0":Landroid/net/sip/SipProfile;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 109
    .local v3, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/ISipSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/sip/ISipSessionListener;

    move-result-object v4

    .line 111
    .local v4, "_arg2":Landroid/net/sip/ISipSessionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/sip/ISipService$Stub;->open3(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/ISipSessionListener;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    goto :goto_fe

    .line 94
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_arg2":Landroid/net/sip/ISipSessionListener;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_e8
    sget-object v2, Landroid/net/sip/SipProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    .line 96
    .restart local v2    # "_arg0":Landroid/net/sip/SipProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/net/sip/ISipService$Stub;->open(Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    nop

    .line 206
    .end local v2    # "_arg0":Landroid/net/sip/SipProfile;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_fe
    return v1

    nop

    :pswitch_data_100
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_c2
        :pswitch_b0
        :pswitch_9a
        :pswitch_84
        :pswitch_69
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
