.class public abstract Landroid/print/IPrintSpoolerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IPrintSpoolerCallbacks.java"

# interfaces
.implements Landroid/print/IPrintSpoolerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintSpoolerCallbacks"

.field static final greylist-max-o TRANSACTION_customPrinterIconCacheCleared:I = 0x8

.field static final greylist-max-o TRANSACTION_onCancelPrintJobResult:I = 0x2

.field static final greylist-max-o TRANSACTION_onCustomPrinterIconCached:I = 0x7

.field static final greylist-max-o TRANSACTION_onGetCustomPrinterIconResult:I = 0x6

.field static final greylist-max-o TRANSACTION_onGetPrintJobInfoResult:I = 0x5

.field static final greylist-max-o TRANSACTION_onGetPrintJobInfosResult:I = 0x1

.field static final greylist-max-o TRANSACTION_onSetPrintJobStateResult:I = 0x3

.field static final greylist-max-o TRANSACTION_onSetPrintJobTagResult:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.print.IPrintSpoolerCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintSpoolerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/print/IPrintSpoolerCallbacks;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 77
    if-nez p0, :cond_4

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_4
    const-string v0, "android.print.IPrintSpoolerCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 81
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/print/IPrintSpoolerCallbacks;

    if-eqz v1, :cond_14

    .line 82
    move-object v1, v0

    check-cast v1, Landroid/print/IPrintSpoolerCallbacks;

    return-object v1

    .line 84
    :cond_14
    new-instance v1, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintSpoolerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 93
    packed-switch p0, :pswitch_data_24

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 125
    :pswitch_5
    const-string v0, "customPrinterIconCacheCleared"

    return-object v0

    .line 121
    :pswitch_8
    const-string/jumbo v0, "onCustomPrinterIconCached"

    return-object v0

    .line 117
    :pswitch_c
    const-string/jumbo v0, "onGetCustomPrinterIconResult"

    return-object v0

    .line 113
    :pswitch_10
    const-string/jumbo v0, "onGetPrintJobInfoResult"

    return-object v0

    .line 109
    :pswitch_14
    const-string/jumbo v0, "onSetPrintJobTagResult"

    return-object v0

    .line 105
    :pswitch_18
    const-string/jumbo v0, "onSetPrintJobStateResult"

    return-object v0

    .line 101
    :pswitch_1c
    const-string/jumbo v0, "onCancelPrintJobResult"

    return-object v0

    .line 97
    :pswitch_20
    const-string/jumbo v0, "onGetPrintJobInfosResult"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
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

    .line 88
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 384
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 136
    invoke-static {p1}, Landroid/print/IPrintSpoolerCallbacks$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.print.IPrintSpoolerCallbacks"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    packed-switch p1, :pswitch_data_98

    .line 152
    packed-switch p1, :pswitch_data_9e

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v1

    .line 225
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->customPrinterIconCacheCleared(I)V

    .line 228
    goto :goto_96

    .line 217
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCustomPrinterIconCached(I)V

    .line 220
    goto :goto_96

    .line 207
    .end local v2    # "_arg0":I
    :pswitch_32
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 209
    .local v2, "_arg0":Landroid/graphics/drawable/Icon;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V

    .line 212
    goto :goto_96

    .line 197
    .end local v2    # "_arg0":Landroid/graphics/drawable/Icon;
    .end local v3    # "_arg1":I
    :pswitch_45
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobInfo;

    .line 199
    .local v2, "_arg0":Landroid/print/PrintJobInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V

    .line 202
    goto :goto_96

    .line 187
    .end local v2    # "_arg0":Landroid/print/PrintJobInfo;
    .end local v3    # "_arg1":I
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 189
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 190
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobTagResult(ZI)V

    .line 192
    goto :goto_96

    .line 177
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 179
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onSetPrintJobStateResult(ZI)V

    .line 182
    goto :goto_96

    .line 167
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 169
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onCancelPrintJobResult(ZI)V

    .line 172
    goto :goto_96

    .line 157
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_85
    sget-object v2, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 159
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3}, Landroid/print/IPrintSpoolerCallbacks$Stub;->onGetPrintJobInfosResult(Ljava/util/List;I)V

    .line 162
    nop

    .line 235
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "_arg1":I
    :goto_96
    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_45
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
