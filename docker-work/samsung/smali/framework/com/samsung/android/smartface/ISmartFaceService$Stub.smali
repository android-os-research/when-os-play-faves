.class public abstract Lcom/samsung/android/smartface/ISmartFaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartFaceService.java"

# interfaces
.implements Lcom/samsung/android/smartface/ISmartFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/ISmartFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSupportedServices:I = 0x6

.field static final blacklist TRANSACTION_register:I = 0x1

.field static final blacklist TRANSACTION_registerAsync:I = 0x3

.field static final blacklist TRANSACTION_setValue:I = 0x5

.field static final blacklist TRANSACTION_unregister:I = 0x2

.field static final blacklist TRANSACTION_unregisterAsync:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "com.samsung.android.smartface.ISmartFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/smartface/ISmartFaceService;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_1c

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 90
    :pswitch_5
    const-string v0, "getSupportedServices"

    return-object v0

    .line 86
    :pswitch_8
    const-string/jumbo v0, "setValue"

    return-object v0

    .line 82
    :pswitch_c
    const-string/jumbo v0, "unregisterAsync"

    return-object v0

    .line 78
    :pswitch_10
    const-string/jumbo v0, "registerAsync"

    return-object v0

    .line 74
    :pswitch_14
    const-string/jumbo v0, "unregister"

    return-object v0

    .line 70
    :pswitch_18
    const-string/jumbo v0, "register"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 303
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 105
    const-string v0, "com.samsung.android.smartface.ISmartFaceService"

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_d
    packed-switch p1, :pswitch_data_90

    .line 117
    packed-switch p1, :pswitch_data_96

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 113
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v1

    .line 173
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->getSupportedServices()I

    move-result v2

    .line 174
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    goto :goto_8f

    .line 161
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v2

    .line 163
    .local v2, "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_8f

    .line 153
    .end local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v2

    .line 154
    .restart local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    .line 156
    goto :goto_8f

    .line 143
    .end local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v2

    .line 145
    .restart local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V

    .line 148
    goto :goto_8f

    .line 134
    .end local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v3    # "_arg1":I
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_8f

    .line 122
    .end local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v4

    .line 127
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 129
    nop

    .line 183
    .end local v2    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_75
        :pswitch_63
        :pswitch_50
        :pswitch_41
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
