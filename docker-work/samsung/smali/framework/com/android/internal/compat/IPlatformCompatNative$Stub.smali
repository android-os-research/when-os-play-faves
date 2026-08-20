.class public abstract Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompatNative.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompatNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompatNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x3

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x4

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompatNative;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompatNative;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompatNative;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 124
    packed-switch p0, :pswitch_data_14

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 140
    :pswitch_5
    const-string v0, "isChangeEnabledByUid"

    return-object v0

    .line 136
    :pswitch_8
    const-string v0, "isChangeEnabledByPackageName"

    return-object v0

    .line 132
    :pswitch_b
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    .line 128
    :pswitch_f
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 378
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 151
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 155
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    .line 156
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 157
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    :cond_d
    packed-switch p1, :pswitch_data_76

    .line 167
    packed-switch p1, :pswitch_data_7c

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 163
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v1

    .line 210
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 212
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 213
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    .line 215
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 217
    goto :goto_74

    .line 196
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 198
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 201
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    .line 203
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 205
    goto :goto_74

    .line 185
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 187
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByUid(JI)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_74

    .line 172
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 174
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    nop

    .line 224
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_4c
        :pswitch_32
        :pswitch_1c
    .end packed-switch
.end method
