.class public abstract Lcom/silead/internal/IFingerService$Stub;
.super Landroid/os/Binder;
.source "IFingerService.java"

# interfaces
.implements Lcom/silead/internal/IFingerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/internal/IFingerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/silead/internal/IFingerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_testCmd:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.silead.internal.IFingerService"

    invoke-virtual {p0, p0, v0}, Lcom/silead/internal/IFingerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/silead/internal/IFingerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    const-string v0, "com.silead.internal.IFingerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/silead/internal/IFingerService;

    if-eqz v1, :cond_14

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/silead/internal/IFingerService;

    return-object v1

    .line 41
    :cond_14
    new-instance v1, Lcom/silead/internal/IFingerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/silead/internal/IFingerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 49
    const-string v0, "com.silead.internal.IFingerService"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 51
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    :cond_d
    packed-switch p1, :pswitch_data_3c

    .line 61
    packed-switch p1, :pswitch_data_42

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 57
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v1

    .line 66
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 68
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 72
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/silead/internal/IFingerServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/silead/internal/IFingerServiceReceiver;

    move-result-object v5

    .line 73
    .local v5, "_arg3":Lcom/silead/internal/IFingerServiceReceiver;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/silead/internal/IFingerService$Stub;->testCmd(Landroid/os/IBinder;I[BLcom/silead/internal/IFingerServiceReceiver;)I

    move-result v6

    .line 74
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    nop

    .line 83
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Lcom/silead/internal/IFingerServiceReceiver;
    .end local v6    # "_result":I
    return v1

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
