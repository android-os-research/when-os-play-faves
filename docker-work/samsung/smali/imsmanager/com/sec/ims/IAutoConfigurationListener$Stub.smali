.class public abstract Lcom/sec/ims/IAutoConfigurationListener$Stub;
.super Landroid/os/Binder;
.source "IAutoConfigurationListener.java"

# interfaces
.implements Lcom/sec/ims/IAutoConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IAutoConfigurationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAutoConfigurationCompleted:I = 0x4

.field static final TRANSACTION_onIidTokenNeeded:I = 0x3

.field static final TRANSACTION_onMsisdnNumberNeeded:I = 0x2

.field static final TRANSACTION_onVerificationCodeNeeded:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/IAutoConfigurationListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
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

    .line 56
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

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
    packed-switch p1, :pswitch_data_40

    .line 68
    packed-switch p1, :pswitch_data_46

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 91
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 92
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 93
    invoke-virtual {p0, v2}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->onAutoConfigurationCompleted(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    goto :goto_3f

    .line 84
    .end local v2    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->onIidTokenNeeded()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    goto :goto_3f

    .line 78
    :pswitch_31
    invoke-virtual {p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->onMsisdnNumberNeeded()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    goto :goto_3f

    .line 72
    :pswitch_38
    invoke-virtual {p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;->onVerificationCodeNeeded()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    nop

    .line 102
    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method
