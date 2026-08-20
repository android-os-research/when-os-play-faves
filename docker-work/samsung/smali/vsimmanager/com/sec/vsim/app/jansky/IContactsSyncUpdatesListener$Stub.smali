.class public abstract Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;
.super Landroid/os/Binder;
.source "IContactsSyncUpdatesListener.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onContactDownloaded:I = 0x1

.field static final TRANSACTION_onContactUploaded:I = 0x2

.field static final TRANSACTION_onUpdatedContactUploaded:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.sec.vsim.app.jansky.IContactsSyncUpdatesListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    const-string v0, "com.sec.vsim.app.jansky.IContactsSyncUpdatesListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    if-eqz v1, :cond_14

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;

    return-object v1

    .line 46
    :cond_14
    new-instance v1, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
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

    .line 54
    const-string v0, "com.sec.vsim.app.jansky.IContactsSyncUpdatesListener"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_d
    packed-switch p1, :pswitch_data_54

    .line 66
    packed-switch p1, :pswitch_data_5a

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 62
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 89
    :pswitch_1c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 90
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->onUpdatedContactUploaded(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    goto :goto_52

    .line 80
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_2e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 81
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->onContactUploaded(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    goto :goto_52

    .line 71
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_40
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 72
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, v2}, Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener$Stub;->onContactDownloaded(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    nop

    .line 100
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
