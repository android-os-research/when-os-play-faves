.class public abstract Lcom/publicnfc/IAdapter$Stub;
.super Landroid/os/Binder;
.source "IAdapter.java"

# interfaces
.implements Lcom/publicnfc/IAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/publicnfc/IAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/publicnfc/IAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_disable:I = 0x5

.field static final TRANSACTION_enable:I = 0x4

.field static final TRANSACTION_getNfcState:I = 0x1

.field static final TRANSACTION_readerDisable:I = 0x2

.field static final TRANSACTION_readerEnable:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.publicnfc.IAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/publicnfc/IAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/publicnfc/IAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "com.publicnfc.IAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/publicnfc/IAdapter;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/publicnfc/IAdapter;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Lcom/publicnfc/IAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/publicnfc/IAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 64
    const-string v0, "com.publicnfc.IAdapter"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    :cond_d
    packed-switch p1, :pswitch_data_54

    .line 76
    packed-switch p1, :pswitch_data_5a

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 108
    :pswitch_1c
    invoke-virtual {p0}, Lcom/publicnfc/IAdapter$Stub;->disable()Z

    move-result v2

    .line 109
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    goto :goto_53

    .line 101
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p0}, Lcom/publicnfc/IAdapter$Stub;->enable()Z

    move-result v2

    .line 102
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 104
    goto :goto_53

    .line 94
    .end local v2    # "_result":Z
    :pswitch_32
    invoke-virtual {p0}, Lcom/publicnfc/IAdapter$Stub;->readerEnable()Z

    move-result v2

    .line 95
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    goto :goto_53

    .line 87
    .end local v2    # "_result":Z
    :pswitch_3d
    invoke-virtual {p0}, Lcom/publicnfc/IAdapter$Stub;->readerDisable()Z

    move-result v2

    .line 88
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    goto :goto_53

    .line 80
    .end local v2    # "_result":Z
    :pswitch_48
    invoke-virtual {p0}, Lcom/publicnfc/IAdapter$Stub;->getNfcState()I

    move-result v2

    .line 81
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    nop

    .line 118
    .end local v2    # "_result":I
    :goto_53
    return v1

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
