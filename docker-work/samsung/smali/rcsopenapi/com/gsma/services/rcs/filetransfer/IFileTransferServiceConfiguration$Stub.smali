.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IFileTransferServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getImageResizeOption:I = 0xa

.field static final TRANSACTION_getMaxAudioMessageLength:I = 0x3

.field static final TRANSACTION_getMaxFileTransfers:I = 0x9

.field static final TRANSACTION_getMaxSize:I = 0x2

.field static final TRANSACTION_getWarnSize:I = 0x1

.field static final TRANSACTION_isAutoAcceptEnabled:I = 0x4

.field static final TRANSACTION_isAutoAcceptInRoamingEnabled:I = 0x6

.field static final TRANSACTION_isAutoAcceptModeChangeable:I = 0x8

.field static final TRANSACTION_isGroupFileTransferSupported:I = 0xc

.field static final TRANSACTION_setAutoAccept:I = 0x5

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x7

.field static final TRANSACTION_setImageResizeOption:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    packed-switch p1, :pswitch_data_ac

    .line 102
    packed-switch p1, :pswitch_data_b2

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 98
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v1

    .line 189
    :pswitch_1c
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isGroupFileTransferSupported()Z

    move-result v2

    .line 190
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 192
    goto/16 :goto_ab

    .line 181
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setImageResizeOption(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto/16 :goto_ab

    .line 173
    .end local v2    # "_arg0":I
    :pswitch_37
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getImageResizeOption()I

    move-result v2

    .line 174
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_ab

    .line 166
    .end local v2    # "_result":I
    :pswitch_42
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxFileTransfers()I

    move-result v2

    .line 167
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_ab

    .line 159
    .end local v2    # "_result":I
    :pswitch_4d
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptModeChangeable()Z

    move-result v2

    .line 160
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_ab

    .line 151
    .end local v2    # "_result":Z
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 152
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAcceptInRoaming(Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_ab

    .line 143
    .end local v2    # "_arg0":Z
    :pswitch_66
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptInRoamingEnabled()Z

    move-result v2

    .line 144
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    goto :goto_ab

    .line 135
    .end local v2    # "_result":Z
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 136
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAccept(Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_ab

    .line 127
    .end local v2    # "_arg0":Z
    :pswitch_7f
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptEnabled()Z

    move-result v2

    .line 128
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    goto :goto_ab

    .line 120
    .end local v2    # "_result":Z
    :pswitch_8a
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxAudioMessageLength()J

    move-result-wide v2

    .line 121
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    goto :goto_ab

    .line 113
    .end local v2    # "_result":J
    :pswitch_95
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxSize()J

    move-result-wide v2

    .line 114
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    goto :goto_ab

    .line 106
    .end local v2    # "_result":J
    :pswitch_a0
    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getWarnSize()J

    move-result-wide v2

    .line 107
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    nop

    .line 199
    .end local v2    # "_result":J
    :goto_ab
    return v1

    :pswitch_data_ac
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_95
        :pswitch_8a
        :pswitch_7f
        :pswitch_71
        :pswitch_66
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_37
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
