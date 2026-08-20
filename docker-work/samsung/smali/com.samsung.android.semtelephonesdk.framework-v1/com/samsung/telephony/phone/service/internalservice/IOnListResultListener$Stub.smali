.class public abstract Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.super Landroid/os/Binder;
.source "IOnListResultListener.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_4
    const-string v0, "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    if-eqz v1, :cond_14

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    return-object v1

    .line 40
    :cond_14
    new-instance v1, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 44
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

    .line 48
    const-string v0, "com.samsung.telephony.phone.service.internalservice.IOnListResultListener"

    .line 49
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 60
    packed-switch p1, :pswitch_data_3e

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v1

    .line 65
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 67
    .local v2, "_arg0":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 68
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 70
    .local v4, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 72
    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->onResult(ZLjava/util/List;Ljava/lang/String;)V

    .line 73
    nop

    .line 80
    .end local v2    # "_arg0":Z
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/List;
    .end local v5    # "_arg2":Ljava/lang/String;
    return v1

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
