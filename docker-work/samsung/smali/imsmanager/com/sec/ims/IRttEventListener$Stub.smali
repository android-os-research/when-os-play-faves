.class public abstract Lcom/sec/ims/IRttEventListener$Stub;
.super Landroid/os/Binder;
.source "IRttEventListener.java"

# interfaces
.implements Lcom/sec/ims/IRttEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IRttEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IRttEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onRttEvent:I = 0x1

.field static final TRANSACTION_onRttEventBySession:I = 0x2

.field static final TRANSACTION_onSendRttSessionModifyRequest:I = 0x3

.field static final TRANSACTION_onSendRttSessionModifyResponse:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.sec.ims.IRttEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IRttEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.sec.ims.IRttEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IRttEventListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/IRttEventListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/sec/ims/IRttEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IRttEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    const-string v0, "com.sec.ims.IRttEventListener"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_d
    packed-switch p1, :pswitch_data_66

    .line 68
    packed-switch p1, :pswitch_data_6c

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 104
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 108
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 109
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/IRttEventListener$Stub;->onSendRttSessionModifyResponse(IZZ)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    goto :goto_64

    .line 93
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 96
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IRttEventListener$Stub;->onSendRttSessionModifyRequest(IZ)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    goto :goto_64

    .line 82
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/IRttEventListener$Stub;->onRttEventBySession(ILjava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    goto :goto_64

    .line 73
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 75
    invoke-virtual {p0, v2}, Lcom/sec/ims/IRttEventListener$Stub;->onRttEvent(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    nop

    .line 119
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_64
    return v1

    nop

    :pswitch_data_66
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_44
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
