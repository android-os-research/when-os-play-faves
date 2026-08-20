.class public abstract Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;
.super Landroid/os/Binder;
.source "IVideoSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addEventListener:I = 0x7

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_deleteVideoSharing:I = 0xc

.field static final TRANSACTION_deleteVideoSharings:I = 0xa

.field static final TRANSACTION_deleteVideoSharingsByContactId:I = 0xb

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getVideoSharing:I = 0x6

.field static final TRANSACTION_getVideoSharings:I = 0x5

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x8

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_shareVideo:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_4
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_14

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    return-object v1

    .line 78
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.gsma.services.rcs.sharing.video.IVideoSharingService"

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
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharing(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_e0

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
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto/16 :goto_e0

    .line 181
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    :pswitch_3e
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->deleteVideoSharings()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto/16 :goto_e0

    .line 170
    :pswitch_46
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 172
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;

    move-result-object v3

    .line 173
    .local v3, "_arg1":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v4

    .line 175
    .local v4, "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 177
    goto/16 :goto_e0

    .line 161
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/contact/ContactId;
    .end local v3    # "_arg1":Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
    .end local v4    # "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    goto :goto_e0

    .line 152
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;

    move-result-object v2

    .line 153
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_e0

    .line 142
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v3

    .line 145
    .local v3, "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 147
    goto :goto_e0

    .line 134
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/gsma/services/rcs/sharing/video/IVideoSharing;
    :pswitch_9b
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getVideoSharings()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 137
    goto :goto_e0

    .line 127
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_a6
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;

    move-result-object v2

    .line 128
    .local v2, "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    goto :goto_e0

    .line 119
    .end local v2    # "_result":Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_e0

    .line 110
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v2

    .line 111
    .restart local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_e0

    .line 102
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    :pswitch_d5
    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService$Stub;->isServiceRegistered()Z

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
    :goto_e0
    return v1

    nop

    :pswitch_data_e2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_c3
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_89
        :pswitch_77
        :pswitch_65
        :pswitch_46
        :pswitch_3e
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
