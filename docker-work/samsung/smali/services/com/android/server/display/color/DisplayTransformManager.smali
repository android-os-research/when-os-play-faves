.class public Lcom/android/server/display/color/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field public static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field public static final COLOR_SATURATION_NATURAL:F = 1.0f

.field public static final DISPLAY_COLOR_ENHANCED:I = 0x2

.field public static final DISPLAY_COLOR_MANAGED:I = 0x0

.field public static final DISPLAY_COLOR_UNMANAGED:I = 0x1

.field public static final LEVEL_COLOR_MATRIX_DISPLAY_WHITE_BALANCE:I = 0x7d

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field public static final LEVEL_COLOR_MATRIX_REDUCE_BRIGHT_COLORS:I = 0xfa

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field public static final PERSISTENT_PROPERTY_COMPOSITION_COLOR_MODE:Ljava/lang/String; = "persist.sys.sf.color_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field public static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field public static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field public static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field public static final SURFACE_FLINGER_TRANSACTION_QUERY_COLOR_MANAGED:I = 0x406

.field public static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field public static final TAG:Ljava/lang/String; = "DisplayTransformManager"

.field public static final sFlinger:Landroid/os/IBinder;


# instance fields
.field public final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field public mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDaltonizerModeLock"
        }
    .end annotation
.end field

.field public final mDaltonizerModeLock:Ljava/lang/Object;

.field public final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "SurfaceFlinger"

    .line 118
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 108
    fill-array-data v0, :array_26

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    return-void

    :array_26
    .array-data 4
        0x2
        0x10
    .end array-data
.end method

.method public static applyColorMatrix([F)V
    .registers 5

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v1

    :goto_11
    const/16 v3, 0x10

    if-ge v2, v3, :cond_20

    .line 209
    aget v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 212
    :cond_1d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    :cond_20
    :try_start_20
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v2, 0x3f7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_2e
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 219
    :goto_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    :catchall_2c
    move-exception p0

    goto :goto_38

    :catch_2e
    move-exception p0

    :try_start_2f
    const-string v1, "DisplayTransformManager"

    const-string v2, "Failed to set color transform"

    .line 217
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    goto :goto_28

    :goto_37
    return-void

    .line 219
    :goto_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw p0
.end method

.method public static applyDaltonizerMode(I)V
    .registers 5

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    :try_start_c
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v1, 0x3f6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_1b
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 235
    :goto_15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_24

    :catchall_19
    move-exception p0

    goto :goto_25

    :catch_1b
    move-exception p0

    :try_start_1c
    const-string v1, "DisplayTransformManager"

    const-string v2, "Failed to set Daltonizer mode"

    .line 233
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    goto :goto_15

    :goto_24
    return-void

    .line 235
    :goto_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw p0
.end method


# virtual methods
.method public final applySaturation(F)V
    .registers 5

    .line 308
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.sf.color_saturation"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const-string v0, "android.ui.ISurfaceComposer"

    .line 310
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 313
    :try_start_16
    sget-object p1, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v0, 0x3fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, p0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_25
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    .line 317
    :goto_1f
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    :catchall_23
    move-exception p1

    goto :goto_2f

    :catch_25
    move-exception p1

    :try_start_26
    const-string v0, "DisplayTransformManager"

    const-string v1, "Failed to set saturation"

    .line 315
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    goto :goto_1f

    :goto_2e
    return-void

    .line 317
    :goto_2f
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw p1
.end method

.method public final computeColorMatrixLocked()[F
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorMatrix"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mTempColorMatrix:[[F

    const/4 v2, 0x0

    .line 192
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_12
    if-ge v2, v0, :cond_2f

    .line 194
    iget-object v3, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [F

    add-int/lit8 v3, v2, 0x1

    .line 195
    rem-int/lit8 v4, v3, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x0

    rem-int/lit8 v2, v2, 0x2

    aget-object v6, v1, v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move v2, v3

    goto :goto_12

    .line 197
    :cond_2f
    rem-int/lit8 v0, v0, 0x2

    aget-object p0, v1, v0

    return-object p0
.end method

.method public getColorMatrix(I)[F
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_14

    .line 129
    :cond_f
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    :goto_14
    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public isDeviceColorManaged()Z
    .registers 6

    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 291
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 293
    :try_start_e
    sget-object v2, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 v3, 0x406

    invoke-interface {v2, v3, p0, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_22
    .catchall {:try_start_e .. :try_end_19} :catchall_20

    .line 298
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_20
    move-exception v1

    goto :goto_31

    :catch_22
    move-exception v2

    :try_start_23
    const-string v3, "DisplayTransformManager"

    const-string v4, "Failed to query wide color support"

    .line 296
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 298
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1

    .line 298
    :goto_31
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v1
.end method

.method public needsLinearColorMatrix()Z
    .registers 2

    const-string/jumbo p0, "persist.sys.sf.native_mode"

    const/4 v0, 0x1

    .line 243
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public needsLinearColorMatrix(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public setColorMatrix(I[F)V
    .registers 6

    if-eqz p2, :cond_20

    .line 144
    array-length v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    goto :goto_20

    .line 145
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v0

    .line 150
    :try_start_23
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 151
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_52

    if-nez p2, :cond_39

    .line 153
    iget-object p2, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4b

    :cond_39
    if-nez v1, :cond_46

    .line 155
    iget-object v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4b

    .line 157
    :cond_46
    array-length p1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/display/color/DisplayTransformManager;->applyColorMatrix([F)V

    .line 163
    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public setColorMode(I[FI)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_d

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 261
    invoke-virtual {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_d
    if-ne p1, v1, :cond_19

    const p1, 0x3f8ccccd    # 1.1f

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 264
    invoke-virtual {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 266
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 267
    invoke-virtual {p0, v1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_23
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2d

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 270
    invoke-virtual {p0, v0, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    goto :goto_3b

    :cond_2d
    const/16 v0, 0x100

    if-lt p1, v0, :cond_3b

    const/16 v0, 0x1ff

    if-gt p1, v0, :cond_3b

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/server/display/color/DisplayTransformManager;->applySaturation(F)V

    .line 274
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setDisplayColor(II)V

    :cond_3b
    :goto_3b
    const/16 p1, 0x64

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayTransformManager;->updateConfiguration()V

    return v1
.end method

.method public setDaltonizerMode(I)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget v1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v1, p1, :cond_c

    .line 175
    iput p1, p0, Lcom/android/server/display/color/DisplayTransformManager;->mDaltonizerMode:I

    .line 176
    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->applyDaltonizerMode(I)V

    .line 178
    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final setDisplayColor(II)V
    .registers 5

    .line 325
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq p2, p0, :cond_17

    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.sf.color_mode"

    .line 327
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 332
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eq p2, p0, :cond_28

    .line 335
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    :cond_28
    :try_start_28
    sget-object p0, Lcom/android/server/display/color/DisplayTransformManager;->sFlinger:Landroid/os/IBinder;

    const/16 p1, 0x3ff

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_37
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    .line 342
    :goto_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_40

    :catchall_35
    move-exception p0

    goto :goto_41

    :catch_37
    move-exception p0

    :try_start_38
    const-string p1, "DisplayTransformManager"

    const-string p2, "Failed to set display color"

    .line 340
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    goto :goto_31

    :goto_40
    return-void

    .line 342
    :goto_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw p0
.end method

.method public final updateConfiguration()V
    .registers 3

    .line 348
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "DisplayTransformManager"

    const-string v1, "Could not update configuration"

    .line 350
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method
