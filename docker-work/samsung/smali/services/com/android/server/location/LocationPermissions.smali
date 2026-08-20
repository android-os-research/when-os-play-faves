.class public final Lcom/android/server/location/LocationPermissions;
.super Ljava/lang/Object;
.source "LocationPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationPermissions$PermissionLevel;
    }
.end annotation


# static fields
.field public static final PERMISSION_COARSE:I = 0x1

.field public static final PERMISSION_FINE:I = 0x2

.field public static final PERMISSION_NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAppOp(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    return v0

    .line 80
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static asPermission(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const-string p0, "android.permission.ACCESS_FINE_LOCATION"

    return-object p0

    .line 66
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_f
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p0
.end method

.method public static checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z
    .registers 2

    .line 149
    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->getCallingOrSelfPermissionLevel(Landroid/content/Context;)I

    move-result p0

    .line 148
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result p0

    return p0
.end method

.method public static checkLocationPermission(II)Z
    .registers 2

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static checkLocationPermission(Landroid/content/Context;III)Z
    .registers 4

    .line 159
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    .line 158
    invoke-static {p0, p3}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result p0

    return p0
.end method

.method public static enforceBypassPermission(Landroid/content/Context;II)V
    .registers 5

    const-string v0, "android.permission.LOCATION_BYPASS"

    .line 136
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 139
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not have "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V
    .registers 3

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceBypassPermission(Landroid/content/Context;II)V

    return-void
.end method

.method public static enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V
    .registers 5

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 90
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    .line 89
    invoke-static {v0, p0, p1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    return-void
.end method

.method public static enforceLocationPermission(III)V
    .registers 7

    .line 111
    invoke-static {p1, p2}, Lcom/android/server/location/LocationPermissions;->checkLocationPermission(II)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    const-string v0, "."

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, " does not have "

    const-string/jumbo v3, "uid "

    if-eq p2, p1, :cond_35

    const/4 p1, 0x2

    if-eq p2, p1, :cond_17

    return-void

    .line 119
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " or "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static enforceLocationPermission(Landroid/content/Context;III)V
    .registers 4

    .line 101
    invoke-static {p0, p1, p2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    .line 100
    invoke-static {p1, p0, p3}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    return-void
.end method

.method public static getCallingOrSelfPermissionLevel(Landroid/content/Context;)I
    .registers 3

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getPermissionLevel(Landroid/content/Context;II)I
    .registers 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 185
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 188
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
