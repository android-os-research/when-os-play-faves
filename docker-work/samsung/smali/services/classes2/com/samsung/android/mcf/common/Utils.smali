.class public Lcom/samsung/android/mcf/common/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mcfserver"

.field public static final SERVER_PERMISSION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    const-string v3, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/common/Utils;->SERVER_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 7
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    if-nez p0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_11
    array-length v3, p0

    if-ge v2, v3, :cond_2b

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static byteArrayToShort([B)S
    .registers 6
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_18

    array-length v4, p0

    add-int/2addr v4, v3

    if-ge v4, v0, :cond_e

    aput-byte v2, v1, v3

    goto :goto_15

    :cond_e
    array-length v4, p0

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    aget-byte v4, p0, v4

    aput-byte v4, v1, v3

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method public static createBundle()Landroid/os/Bundle;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public static getBleServiceId(IZZ)I
    .registers 6

    const/16 v0, 0x10

    if-le p0, v0, :cond_c

    invoke-static {p0}, Lcom/samsung/android/mcf/common/Utils;->getEnableBitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_c

    return p0

    :cond_c
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    move p1, p0

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    if-eqz p2, :cond_15

    goto :goto_16

    :cond_15
    move p0, v1

    :goto_16
    shl-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static getEnableBitCount(I)I
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_9

    add-int/lit8 v1, p0, -0x1

    and-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return v0
.end method

.method public static getMcfVersionCode(Landroid/content/Context;)J
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.mcfserver"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-wide v0

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Utils"

    const-string v1, "getMcfVersionCode"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    :cond_18
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p0, :cond_1e

    const-string p0, "Samsung Mobile"

    :cond_1e
    return-object p0
.end method

.method public static getServerDeniedPermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/mcf/common/Utils;->SERVER_PERMISSION:[Ljava/lang/String;

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "getServerDeniedPermissions"

    const-string v3, "Utils"

    if-nez p0, :cond_18

    const-string p0, "null packageManager"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_18
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_40

    aget-object v6, v1, v5

    const-string v7, "com.samsung.android.mcfserver"

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " denied"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v7}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_40
    :goto_40
    return-object v0
.end method

.method public static hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "hasNoPermission"

    const-string v3, "Utils"

    if-nez v0, :cond_11

    const-string p0, "null packageManager"

    :goto_d
    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    const-string v4, " permission"

    if-eqz p0, :cond_2e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Need "

    :goto_20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_2e
    const-string p0, "com.samsung.android.mcfserver"

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MCFServer needs "

    goto :goto_20

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public static hasUWB(Landroid/content/Context;)Z
    .registers 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string/jumbo v0, "samsung.hardware.uwb"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    :goto_11
    if-ge v0, v1, :cond_32

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    :cond_32
    return-object v2
.end method

.method public static isMcfInstalled(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.mcfserver"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_f

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Utils"

    const-string v2, "isMcfInstalled"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static throwOnMainThread(Ljava/lang/Exception;)V
    .registers 4
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(TT;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    const-string/jumbo v2, "throwOnMainThread"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-void
.end method
