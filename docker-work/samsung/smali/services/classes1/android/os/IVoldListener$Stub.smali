.class public abstract Landroid/os/IVoldListener$Stub;
.super Landroid/os/Binder;
.source "IVoldListener.java"

# interfaces
.implements Landroid/os/IVoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldListener"

.field public static final TRANSACTION_onDiskCreated:I = 0x1

.field public static final TRANSACTION_onDiskDestroyed:I = 0x4

.field public static final TRANSACTION_onDiskMetadataChanged:I = 0x3

.field public static final TRANSACTION_onDiskScanned:I = 0x2

.field public static final TRANSACTION_onEncryptionStateChanged:I = 0xc

.field public static final TRANSACTION_onVolumeCreated:I = 0x5

.field public static final TRANSACTION_onVolumeDestroyed:I = 0xa

.field public static final TRANSACTION_onVolumeInternalPathChanged:I = 0x9

.field public static final TRANSACTION_onVolumeMetadataChanged:I = 0x7

.field public static final TRANSACTION_onVolumePathChanged:I = 0x8

.field public static final TRANSACTION_onVolumeStateChanged:I = 0x6

.field public static final TRANSACTION_sendVoldMessage:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IVoldListener"

    .line 60
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.os.IVoldListener"

    .line 71
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 72
    instance-of v1, v0, Landroid/os/IVoldListener;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Landroid/os/IVoldListener;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Landroid/os/IVoldListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVoldListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.os.IVoldListener"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_e5

    packed-switch p1, :pswitch_data_ea

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 216
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-interface {p0, p1, p3, p4}, Landroid/os/IVoldListener;->onEncryptionStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 208
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->sendVoldMessage(Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 200
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onVolumeDestroyed(Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 190
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 180
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e4

    .line 166
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-interface {p0, p1, p3, p4, v1}, Landroid/os/IVoldListener;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 156
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onVolumeStateChanged(Ljava/lang/String;I)V

    goto :goto_e4

    .line 140
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 150
    invoke-interface/range {v1 .. v6}, Landroid/os/IVoldListener;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_e4

    .line 132
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onDiskDestroyed(Ljava/lang/String;)V

    goto :goto_e4

    .line 118
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 126
    invoke-interface/range {v1 .. v6}, Landroid/os/IVoldListener;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 110
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-interface {p0, p1}, Landroid/os/IVoldListener;->onDiskScanned(Ljava/lang/String;)V

    goto :goto_e4

    .line 100
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-interface {p0, p1, p3}, Landroid/os/IVoldListener;->onDiskCreated(Ljava/lang/String;I)V

    :goto_e4
    return v0

    .line 91
    :cond_e5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_d6
        :pswitch_cb
        :pswitch_b3
        :pswitch_a8
        :pswitch_8c
        :pswitch_7d
        :pswitch_66
        :pswitch_56
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_1a
    .end packed-switch
.end method
