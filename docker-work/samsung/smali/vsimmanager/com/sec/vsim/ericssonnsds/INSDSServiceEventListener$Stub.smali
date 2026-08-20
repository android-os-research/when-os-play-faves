.class public abstract Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;
.super Landroid/os/Binder;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onNsdsServiceResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_4
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    if-eqz v1, :cond_14

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    return-object v1

    .line 41
    :cond_14
    new-instance v1, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 45
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

    .line 49
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

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
    packed-switch p1, :pswitch_data_38

    .line 61
    packed-switch p1, :pswitch_data_3e

    .line 78
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 70
    .local v3, "_arg1":Z
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 71
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 72
    .local v5, "_arg2":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->onNsdsServiceResponse(IZLjava/util/List;)V

    .line 74
    nop

    .line 81
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/List;
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
