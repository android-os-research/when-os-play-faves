.class public abstract Landroid/gsi/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Landroid/gsi/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_backingImageExists:I = 0x5

.field public static final TRANSACTION_createBackingImage:I = 0x1

.field public static final TRANSACTION_deleteBackingImage:I = 0x2

.field public static final TRANSACTION_getAllBackingImages:I = 0x8

.field public static final TRANSACTION_getAvbPublicKey:I = 0x7

.field public static final TRANSACTION_getMappedImageDevice:I = 0xd

.field public static final TRANSACTION_isImageDisabled:I = 0xc

.field public static final TRANSACTION_isImageMapped:I = 0x6

.field public static final TRANSACTION_mapImageDevice:I = 0x3

.field public static final TRANSACTION_removeAllImages:I = 0xa

.field public static final TRANSACTION_removeDisabledImages:I = 0xb

.field public static final TRANSACTION_unmapImageDevice:I = 0x4

.field public static final TRANSACTION_zeroFillNewImage:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.gsi.IImageService"

    .line 144
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IImageService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "android.gsi.IImageService"

    .line 155
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    instance-of v1, v0, Landroid/gsi/IImageService;

    if-eqz v1, :cond_13

    .line 157
    check-cast v0, Landroid/gsi/IImageService;

    return-object v0

    .line 159
    :cond_13
    new-instance v0, Landroid/gsi/IImageService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "android.gsi.IImageService"

    if-lt p1, v0, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 169
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_103

    packed-switch p1, :pswitch_data_108

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 304
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_102

    .line 294
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageDisabled(Ljava/lang/String;)Z

    move-result p0

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_102

    .line 287
    :pswitch_40
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeDisabledImages()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_102

    .line 281
    :pswitch_48
    invoke-interface {p0}, Landroid/gsi/IImageService;->removeAllImages()V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_102

    .line 271
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-interface {p0, p1, v1, v2}, Landroid/gsi/IImageService;->zeroFillNewImage(Ljava/lang/String;J)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_102

    .line 263
    :pswitch_63
    invoke-interface {p0}, Landroid/gsi/IImageService;->getAllBackingImages()Ljava/util/List;

    move-result-object p0

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_102

    .line 251
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance p4, Landroid/gsi/AvbPublicKey;

    invoke-direct {p4}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-interface {p0, p1, p4}, Landroid/gsi/IImageService;->getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I

    move-result p0

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {p3, p4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_102

    .line 241
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->isImageMapped(Ljava/lang/String;)Z

    move-result p0

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_102

    .line 231
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->backingImageExists(Ljava/lang/String;)Z

    move-result p0

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_102

    .line 222
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->unmapImageDevice(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_102

    .line 208
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 212
    new-instance v1, Landroid/gsi/MappedImage;

    invoke-direct {v1}, Landroid/gsi/MappedImage;-><init>()V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-interface {p0, p1, p4, v1}, Landroid/gsi/IImageService;->mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_102

    .line 199
    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-interface {p0, p1}, Landroid/gsi/IImageService;->deleteBackingImage(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_102

    .line 184
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/gsi/IProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IProgressCallback;

    move-result-object v6

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    .line 192
    invoke-interface/range {v1 .. v6}, Landroid/gsi/IImageService;->createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_102
    return v0

    .line 175
    :cond_103
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_d6
        :pswitch_bc
        :pswitch_ae
        :pswitch_9c
        :pswitch_8a
        :pswitch_6f
        :pswitch_63
        :pswitch_50
        :pswitch_48
        :pswitch_40
        :pswitch_2d
        :pswitch_1a
    .end packed-switch
.end method
