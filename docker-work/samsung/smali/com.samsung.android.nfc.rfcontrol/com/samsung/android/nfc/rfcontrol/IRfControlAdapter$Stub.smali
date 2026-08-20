.class public abstract Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;
.super Landroid/os/Binder;
.source "IRfControlAdapter.java"

# interfaces
.implements Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRfState:I = 0x2

.field static final TRANSACTION_setRfEnable:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.samsung.android.nfc.rfcontrol.IRfControlAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_4
    const-string v0, "com.samsung.android.nfc.rfcontrol.IRfControlAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    if-eqz v1, :cond_14

    .line 42
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter;

    return-object v1

    .line 44
    :cond_14
    new-instance v1, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
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

    .line 52
    const-string v0, "com.samsung.android.nfc.rfcontrol.IRfControlAdapter"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    :cond_d
    packed-switch p1, :pswitch_data_3a

    .line 64
    packed-switch p1, :pswitch_data_40

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 78
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;->getRfState()Z

    move-result v2

    .line 79
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    goto :goto_39

    .line 69
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 70
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 71
    invoke-virtual {p0, v2}, Lcom/samsung/android/nfc/rfcontrol/IRfControlAdapter$Stub;->setRfEnable(Z)Z

    move-result v3

    .line 72
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 74
    nop

    .line 88
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :goto_39
    return v1

    :pswitch_data_3a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
