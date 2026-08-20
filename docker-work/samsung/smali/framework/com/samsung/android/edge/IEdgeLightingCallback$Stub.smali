.class public abstract Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;
.super Landroid/os/Binder;
.source "IEdgeLightingCallback.java"

# interfaces
.implements Lcom/samsung/android/edge/IEdgeLightingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/IEdgeLightingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/IEdgeLightingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onEdgeLightingStarted:I = 0x4

.field static final blacklist TRANSACTION_onEdgeLightingStopped:I = 0x5

.field static final blacklist TRANSACTION_onScreenChanged:I = 0x3

.field static final blacklist TRANSACTION_onStartEdgeLighting:I = 0x1

.field static final blacklist TRANSACTION_onStopEdgeLighting:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.samsung.android.edge.IEdgeLightingCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.samsung.android.edge.IEdgeLightingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/edge/IEdgeLightingCallback;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/edge/IEdgeLightingCallback;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_14

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "onEdgeLightingStopped"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "onEdgeLightingStarted"

    return-object v0

    .line 73
    :pswitch_b
    const-string v0, "onScreenChanged"

    return-object v0

    .line 69
    :pswitch_e
    const-string v0, "onStopEdgeLighting"

    return-object v0

    .line 65
    :pswitch_11
    const-string v0, "onStartEdgeLighting"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 242
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "com.samsung.android.edge.IEdgeLightingCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    packed-switch p1, :pswitch_data_56

    .line 108
    packed-switch p1, :pswitch_data_5c

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 147
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->onEdgeLightingStopped()V

    .line 148
    goto :goto_55

    .line 142
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->onEdgeLightingStarted()V

    .line 143
    goto :goto_55

    .line 135
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 136
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->onScreenChanged(Z)V

    .line 138
    goto :goto_55

    .line 125
    .end local v2    # "_arg0":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->onStopEdgeLighting(Ljava/lang/String;I)V

    .line 130
    goto :goto_55

    .line 113
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 117
    .local v3, "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 120
    nop

    .line 155
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .end local v4    # "_arg2":I
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2f
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
