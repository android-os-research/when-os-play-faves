.class public abstract Lcom/samsung/android/infoextraction/IKerykeion$Stub;
.super Landroid/os/Binder;
.source "IKerykeion.java"

# interfaces
.implements Lcom/samsung/android/infoextraction/IKerykeion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/IKerykeion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/IKerykeion$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addResultRule:I = 0x8

.field static final blacklist TRANSACTION_dismiss:I = 0x6

.field static final blacklist TRANSACTION_restart:I = 0x3

.field static final blacklist TRANSACTION_setInfoExtractionListener:I = 0x4

.field static final blacklist TRANSACTION_show:I = 0x5

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_stop:I = 0x2

.field static final blacklist TRANSACTION_training:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.samsung.android.infoextraction.IKerykeion"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/infoextraction/IKerykeion;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "com.samsung.android.infoextraction.IKerykeion"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/infoextraction/IKerykeion;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/infoextraction/IKerykeion;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lcom/samsung/android/infoextraction/IKerykeion$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/infoextraction/IKerykeion$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_24

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 102
    :pswitch_5
    const-string v0, "addResultRule"

    return-object v0

    .line 98
    :pswitch_8
    const-string/jumbo v0, "training"

    return-object v0

    .line 94
    :pswitch_c
    const-string v0, "dismiss"

    return-object v0

    .line 90
    :pswitch_f
    const-string/jumbo v0, "show"

    return-object v0

    .line 86
    :pswitch_13
    const-string/jumbo v0, "setInfoExtractionListener"

    return-object v0

    .line 82
    :pswitch_17
    const-string/jumbo v0, "restart"

    return-object v0

    .line 78
    :pswitch_1b
    const-string/jumbo v0, "stop"

    return-object v0

    .line 74
    :pswitch_1f
    const-string/jumbo v0, "start"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 364
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 113
    invoke-static {p1}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 117
    const-string v0, "com.samsung.android.infoextraction.IKerykeion"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 119
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    :cond_d
    packed-switch p1, :pswitch_data_a0

    .line 129
    packed-switch p1, :pswitch_data_a6

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 199
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->addResultRule(ILjava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_9e

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->training(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_9e

    .line 183
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {p0}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->dismiss()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_9e

    .line 173
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 176
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->show(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_9e

    .line 162
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 165
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->setInfoExtractionListener(ILandroid/os/IBinder;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_9e

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_6b
    invoke-virtual {p0}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->restart()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_9e

    .line 147
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->stop(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto :goto_9e

    .line 134
    .end local v2    # "_arg0":I
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/samsung/android/infoextraction/KerykeionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/infoextraction/KerykeionRequest;

    .line 138
    .local v3, "_arg1":Lcom/samsung/android/infoextraction/KerykeionRequest;
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 139
    .local v4, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/infoextraction/IKerykeion$Stub;->start(ILcom/samsung/android/infoextraction/KerykeionRequest;Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    nop

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/infoextraction/KerykeionRequest;
    .end local v4    # "_arg2":Landroid/graphics/Rect;
    :goto_9e
    return v1

    nop

    :pswitch_data_a0
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_80
        :pswitch_72
        :pswitch_6b
        :pswitch_59
        :pswitch_43
        :pswitch_3c
        :pswitch_2e
        :pswitch_1c
    .end packed-switch
.end method
