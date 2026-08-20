.class public abstract Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;
.super Landroid/os/Binder;
.source "IVoiceCommandManagerService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_registerListener:I = 0x1

.field static final blacklist TRANSACTION_sendCommand:I = 0x3

.field static final blacklist TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
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

    .line 57
    const-string v0, "com.mediatek.common.voicecommand.IVoiceCommandManagerService"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_d
    packed-switch p1, :pswitch_data_74

    .line 69
    packed-switch p1, :pswitch_data_7a

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 98
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 105
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v6

    .line 107
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    goto :goto_72

    .line 86
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 89
    .local v3, "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 91
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    goto :goto_72

    .line 74
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .end local v4    # "_result":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    move-result-object v3

    .line 77
    .restart local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v4

    .line 79
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    nop

    .line 116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .end local v4    # "_result":I
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_58
        :pswitch_3e
        :pswitch_1c
    .end packed-switch
.end method
