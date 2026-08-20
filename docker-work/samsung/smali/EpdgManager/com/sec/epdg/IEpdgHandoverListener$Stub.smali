.class public abstract Lcom/sec/epdg/IEpdgHandoverListener$Stub;
.super Landroid/os/Binder;
.source "IEpdgHandoverListener.java"

# interfaces
.implements Lcom/sec/epdg/IEpdgHandoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IEpdgHandoverListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IEpdgHandoverListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onEpdgAvailable:I = 0x1

.field static final TRANSACTION_onEpdgDeregister:I = 0x4

.field static final TRANSACTION_onEpdgHandoverEnableChanged:I = 0x9

.field static final TRANSACTION_onEpdgHandoverResult:I = 0x2

.field static final TRANSACTION_onEpdgIpsecConnection:I = 0x5

.field static final TRANSACTION_onEpdgIpsecDisconnection:I = 0x6

.field static final TRANSACTION_onEpdgRegister:I = 0x3

.field static final TRANSACTION_onEpdgReleaseCall:I = 0x8

.field static final TRANSACTION_onEpdgShowPopup:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.sec.epdg.IEpdgHandoverListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "com.sec.epdg.IEpdgHandoverListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/epdg/IEpdgHandoverListener;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/sec/epdg/IEpdgHandoverListener;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Lcom/sec/epdg/IEpdgHandoverListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 72
    const-string v0, "com.sec.epdg.IEpdgHandoverListener"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    :cond_d
    packed-switch p1, :pswitch_data_b2

    .line 84
    packed-switch p1, :pswitch_data_b8

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 175
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 178
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgHandoverEnableChanged(IZ)V

    .line 180
    goto/16 :goto_b1

    .line 167
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgReleaseCall(I)V

    .line 170
    goto/16 :goto_b1

    .line 157
    .end local v2    # "_arg0":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgShowPopup(II)V

    .line 162
    goto :goto_b1

    .line 147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgIpsecDisconnection(ILjava/lang/String;)V

    .line 152
    goto :goto_b1

    .line 133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 135
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 140
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgIpsecConnection(ILjava/lang/String;II)V

    .line 142
    goto :goto_b1

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgDeregister(I)V

    .line 128
    goto :goto_b1

    .line 115
    .end local v2    # "_arg0":I
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 118
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgRegister(IZ)V

    .line 120
    goto :goto_b1

    .line 101
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 103
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgHandoverResult(IIILjava/lang/String;)V

    .line 110
    goto :goto_b1

    .line 89
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->onEpdgAvailable(III)V

    .line 96
    nop

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_b1
    return v1

    :pswitch_data_b2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_87
        :pswitch_78
        :pswitch_6d
        :pswitch_56
        :pswitch_47
        :pswitch_38
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
