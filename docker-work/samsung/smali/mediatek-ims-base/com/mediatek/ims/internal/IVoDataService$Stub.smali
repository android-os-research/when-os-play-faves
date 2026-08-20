.class public abstract Lcom/mediatek/ims/internal/IVoDataService$Stub;
.super Landroid/os/Binder;
.source "IVoDataService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IVoDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IVoDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getEnabled:I = 0x2

.field static final blacklist TRANSACTION_setEnabled:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IVoDataService;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IVoDataService;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 60
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    :cond_d
    packed-switch p1, :pswitch_data_42

    .line 72
    packed-switch p1, :pswitch_data_48

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 88
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 90
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->getEnabled(I)Z

    move-result v3

    .line 91
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 93
    goto :goto_40

    .line 77
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 79
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 80
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 81
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->setEnabled(IZ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    nop

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :goto_40
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
