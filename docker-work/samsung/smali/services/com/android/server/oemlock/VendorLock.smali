.class public Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method public static synthetic $r8$lambda$JHHC8HTgRj7lNvt5iYtfsUlNxSE([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/oemlock/VendorLock;->lambda$isOemUnlockAllowedByDevice$2([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kvy4W4uISdL-WK_SH-xwYdNqHSw([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/oemlock/VendorLock;->lambda$isOemUnlockAllowedByCarrier$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBvefNzT_YEv7O66orN6tKDRgms([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/oemlock/VendorLock;->lambda$getLockName$0([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    return-void
.end method

.method public static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .registers 2

    const/4 v0, 0x1

    .line 41
    :try_start_1
    invoke-static {v0}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService(Z)Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_5} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 46
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_c
    const-string v0, "OemLock"

    const-string v1, "OemLock HAL not present on device"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$getLockName$0([Ljava/lang/Integer;[Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 64
    aput-object p3, p1, v0

    return-void
.end method

.method public static synthetic lambda$isOemUnlockAllowedByCarrier$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 5

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method

.method public static synthetic lambda$isOemUnlockAllowedByDevice$2([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .registers 5

    .line 169
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 170
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .registers 6

    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    new-array v3, v1, [Ljava/lang/String;

    .line 62
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_2c

    const/4 p0, 0x0

    aget-object v2, v2, p0

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x0

    if-eq v2, v1, :cond_23

    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_23
    const-string v1, "Failed to get OEM lock name."

    .line 77
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_29
    aget-object p0, v3, p0

    return-object p0

    :catch_2c
    move-exception p0

    const-string v1, "Failed to get name from HAL"

    .line 67
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 6

    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    new-array v3, v1, [Ljava/lang/Boolean;

    .line 120
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v3}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_30

    const/4 p0, 0x0

    aget-object v2, v2, p0

    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_29

    if-eq v2, v1, :cond_21

    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get carrier OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    aget-object p0, v3, p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_30
    move-exception p0

    const-string v1, "Failed to get carrier state from HAL"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isOemUnlockAllowedByDevice()Z
    .registers 6

    const-string v0, "OemLock"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    new-array v3, v1, [Ljava/lang/Boolean;

    .line 168
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v4, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v3}, Lcom/android/server/oemlock/VendorLock$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {p0, v4}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_30

    const/4 p0, 0x0

    aget-object v2, v2, p0

    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_29

    if-eq v2, v1, :cond_21

    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 183
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get device OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    aget-object p0, v3, p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_30
    move-exception p0

    const-string v1, "Failed to get devie state from HAL"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 4

    const-string v0, "OemLock"

    .line 89
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    .line 90
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result p0

    if-eqz p0, :cond_37

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2f

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2a

    .line 96
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Signature required for carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set carrier OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updated carrier allows OEM lock state to: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_4b} :catch_4c

    return-void

    :catch_4c
    move-exception p0

    const-string p1, "Failed to set carrier state with HAL"

    .line 109
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setOemUnlockAllowedByDevice(Z)V
    .registers 4

    const-string v0, "OemLock"

    .line 145
    :try_start_2
    iget-object p0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p1, 0x1

    if-eq p0, p1, :cond_12

    const-string p0, "Unknown return value indicates code is out of sync with HAL"

    .line 151
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to set device OEM unlock state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated device allows OEM lock state to: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    const-string p1, "Failed to set device state with HAL"

    .line 157
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final toByteArrayList([B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    .line 192
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 194
    :cond_8
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    aget-byte v2, p1, v1

    .line 196
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    return-object p0
.end method
