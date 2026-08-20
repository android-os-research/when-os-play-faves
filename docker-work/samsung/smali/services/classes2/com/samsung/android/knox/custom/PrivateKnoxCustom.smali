.class public Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field public static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field public static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field public static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field public static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field public static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field public static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field public static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field public static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final KNOX_CUSTOM_TRUE:I = 0x8

.field public static final PARAM_BUF_SIZE:I = 0x20

.field public static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field public static mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->DEBUG:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .registers 3

    const-class v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    monitor-enter v0

    .line 79
    :try_start_3
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    if-nez v1, :cond_e

    .line 80
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 82
    :cond_e
    sget-object p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native readParamData()[B
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public final enforceSystemPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 97
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public isKnoxCustomAutoStartUpEnabled()Z
    .registers 2

    const/16 v0, 0x8

    .line 216
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result p0

    return p0
.end method

.method public final readBooleanDataValue(I)Z
    .registers 7

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object p0

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return v0

    :cond_f
    const/16 v1, 0x1f

    .line 123
    aget-byte v1, p0, v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v2, :cond_36

    const/16 v1, 0x1e

    const/16 v2, 0x8

    if-ne p1, v2, :cond_27

    .line 126
    aget-byte v4, p0, v2

    if-ne v4, v2, :cond_27

    aget-byte v4, p0, v1

    and-int/2addr v4, v3

    if-eqz v4, :cond_27

    move v0, v3

    :cond_27
    const/16 v4, 0x9

    if-ne p1, v4, :cond_36

    .line 132
    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_36

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_36

    move v0, v3

    :cond_36
    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .registers 5

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->enforceSystemPermission()I

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    if-nez v0, :cond_1a

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    goto :goto_1a

    :cond_14
    if-eqz v0, :cond_1a

    .line 202
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    :cond_1a
    :goto_1a
    return v2
.end method

.method public final writeBooleanDataValue(IZ)Z
    .registers 13

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 144
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 147
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v1

    const/16 v4, 0x1f

    .line 151
    aget-byte v5, v1, v4

    const/4 v6, 0x6

    const/16 v7, 0x9

    const/16 v8, 0x1e

    const/16 v9, 0x8

    if-ne v5, v6, :cond_2e

    .line 153
    aget-byte v5, v1, v9

    aput-byte v5, v0, v9

    .line 154
    aget-byte v5, v1, v7

    aput-byte v5, v0, v7

    .line 155
    aget-byte v1, v1, v8

    aput-byte v1, v0, v8

    goto :goto_37

    :cond_2e
    const/16 v1, 0x17

    aput-byte v1, v0, v9

    const/4 v1, 0x0

    aput-byte v1, v0, v7

    aput-byte v1, v0, v8

    :goto_37
    if-eqz p2, :cond_3c

    .line 164
    aput-byte v9, v0, p1

    goto :goto_3f

    :cond_3c
    const/4 p2, 0x7

    .line 166
    aput-byte p2, v0, p1

    :goto_3f
    aput-byte v6, v0, v4

    if-ne p1, v9, :cond_4a

    aget-byte p2, v0, v8

    or-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, v8

    :cond_4a
    if-ne p1, v7, :cond_53

    aget-byte p1, v0, v8

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v8

    .line 177
    :cond_53
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result p0

    .line 178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method
