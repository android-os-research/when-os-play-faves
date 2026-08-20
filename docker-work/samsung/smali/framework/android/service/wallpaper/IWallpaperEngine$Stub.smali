.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final blacklist TRANSACTION_addLocalColorsAreas:I = 0xd

.field static final blacklist TRANSACTION_applyDimming:I = 0xf

.field static final greylist-max-o TRANSACTION_destroy:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchPointer:I = 0x5

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0x6

.field static final blacklist TRANSACTION_mirrorSurfaceControl:I = 0xe

.field static final blacklist TRANSACTION_removeLocalColorsAreas:I = 0xc

.field static final greylist-max-o TRANSACTION_requestWallpaperColors:I = 0x8

.field static final blacklist TRANSACTION_scalePreview:I = 0xb

.field static final greylist-max-o TRANSACTION_setDesiredSize:I = 0x1

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0x2

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x4

.field static final blacklist TRANSACTION_setSurfaceAlpha:I = 0x7

.field static final greylist-max-o TRANSACTION_setVisibility:I = 0x3

.field static final blacklist TRANSACTION_setZoomOut:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 68
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 76
    if-nez p0, :cond_4

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_14

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperEngine;

    return-object v1

    .line 83
    :cond_14
    new-instance v1, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 92
    packed-switch p0, :pswitch_data_3c

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 152
    :pswitch_5
    const-string v0, "applyDimming"

    return-object v0

    .line 148
    :pswitch_8
    const-string/jumbo v0, "mirrorSurfaceControl"

    return-object v0

    .line 144
    :pswitch_c
    const-string v0, "addLocalColorsAreas"

    return-object v0

    .line 140
    :pswitch_f
    const-string/jumbo v0, "removeLocalColorsAreas"

    return-object v0

    .line 136
    :pswitch_13
    const-string/jumbo v0, "scalePreview"

    return-object v0

    .line 132
    :pswitch_17
    const-string/jumbo v0, "setZoomOut"

    return-object v0

    .line 128
    :pswitch_1b
    const-string v0, "destroy"

    return-object v0

    .line 124
    :pswitch_1e
    const-string/jumbo v0, "requestWallpaperColors"

    return-object v0

    .line 120
    :pswitch_22
    const-string/jumbo v0, "setSurfaceAlpha"

    return-object v0

    .line 116
    :pswitch_26
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 112
    :pswitch_29
    const-string v0, "dispatchPointer"

    return-object v0

    .line 108
    :pswitch_2c
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 104
    :pswitch_30
    const-string/jumbo v0, "setVisibility"

    return-object v0

    .line 100
    :pswitch_34
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 96
    :pswitch_38
    const-string/jumbo v0, "setDesiredSize"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1e
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

    .line 87
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 537
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 163
    invoke-static {p1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.service.wallpaper.IWallpaperEngine"

    .line 168
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 169
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    :cond_15
    packed-switch v7, :pswitch_data_fc

    .line 179
    packed-switch v7, :pswitch_data_102

    .line 308
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 175
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return v11

    .line 301
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 302
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->applyDimming(F)V

    .line 304
    goto/16 :goto_fa

    .line 293
    .end local v0    # "_arg0":F
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->mirrorSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 294
    .local v0, "_result":Landroid/view/SurfaceControl;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    goto/16 :goto_fa

    .line 286
    .end local v0    # "_result":Landroid/view/SurfaceControl;
    :pswitch_3c
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->addLocalColorsAreas(Ljava/util/List;)V

    .line 289
    goto/16 :goto_fa

    .line 278
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_4a
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 279
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 281
    goto/16 :goto_fa

    .line 270
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :pswitch_58
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 271
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->scalePreview(Landroid/graphics/Rect;)V

    .line 273
    goto/16 :goto_fa

    .line 262
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 263
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setZoomOut(F)V

    .line 265
    goto/16 :goto_fa

    .line 256
    .end local v0    # "_arg0":F
    :pswitch_74
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    .line 257
    goto/16 :goto_fa

    .line 251
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->requestWallpaperColors()V

    .line 252
    goto/16 :goto_fa

    .line 244
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 245
    .restart local v0    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setSurfaceAlpha(F)V

    .line 247
    goto/16 :goto_fa

    .line 228
    .end local v0    # "_arg0":F
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 232
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 234
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 236
    .local v15, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 237
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 239
    goto :goto_fa

    .line 220
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_b3
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 221
    .local v0, "_arg0":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    .line 223
    goto :goto_fa

    .line 210
    .end local v0    # "_arg0":Landroid/view/MotionEvent;
    :pswitch_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 212
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 213
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setInAmbientMode(ZJ)V

    .line 215
    goto :goto_fa

    .line 202
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 203
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    .line 205
    goto :goto_fa

    .line 194
    .end local v0    # "_arg0":Z
    :pswitch_dc
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 195
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    .line 197
    goto :goto_fa

    .line 184
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    :pswitch_eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v6, v0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    .line 189
    nop

    .line 311
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_fa
    return v11

    nop

    :pswitch_data_fc
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_eb
        :pswitch_dc
        :pswitch_d1
        :pswitch_c2
        :pswitch_b3
        :pswitch_8a
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_68
        :pswitch_58
        :pswitch_4a
        :pswitch_3c
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
