.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppService.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x3

.field static final blacklist TRANSACTION_registerAppLinkInfo:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_sendAppLinkCommand:I = 0x6

.field static final blacklist TRANSACTION_unregisterAppLinkInfo:I = 0x5

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_1a

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "sendAppLinkCommand"

    return-object v0

    .line 88
    :pswitch_8
    const-string/jumbo v0, "unregisterAppLinkInfo"

    return-object v0

    .line 84
    :pswitch_c
    const-string v0, "registerAppLinkInfo"

    return-object v0

    .line 80
    :pswitch_f
    const-string v0, "createSession"

    return-object v0

    .line 76
    :pswitch_12
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 72
    :pswitch_16
    const-string v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 282
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppService"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    packed-switch p1, :pswitch_data_88

    .line 119
    packed-switch p1, :pswitch_data_8e

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 170
    :pswitch_1c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 171
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 173
    goto :goto_86

    .line 162
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_2b
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 163
    .local v2, "_arg0":Landroid/media/tv/interactive/AppLinkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 165
    goto :goto_86

    .line 154
    .end local v2    # "_arg0":Landroid/media/tv/interactive/AppLinkInfo;
    :pswitch_3a
    sget-object v2, Landroid/media/tv/interactive/AppLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/AppLinkInfo;

    .line 155
    .restart local v2    # "_arg0":Landroid/media/tv/interactive/AppLinkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 157
    goto :goto_86

    .line 140
    .end local v2    # "_arg0":Landroid/media/tv/interactive/AppLinkInfo;
    :pswitch_49
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 142
    .local v2, "_arg0":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v3

    .line 144
    .local v3, "_arg1":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 147
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V

    .line 149
    goto :goto_86

    .line 132
    .end local v2    # "_arg0":Landroid/view/InputChannel;
    .end local v3    # "_arg1":Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    move-result-object v2

    .line 133
    .local v2, "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V

    .line 135
    goto :goto_86

    .line 124
    .end local v2    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;

    move-result-object v2

    .line 125
    .restart local v2    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V

    .line 127
    nop

    .line 180
    .end local v2    # "_arg0":Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    :goto_86
    return v1

    nop

    :pswitch_data_88
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_77
        :pswitch_68
        :pswitch_49
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
