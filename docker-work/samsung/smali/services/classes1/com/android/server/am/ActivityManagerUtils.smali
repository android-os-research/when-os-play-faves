.class public Lcom/android/server/am/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# static fields
.field public static sAndroidIdHash:Ljava/lang/Integer;

.field public static final sHashCache:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sHashCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sInjectedAndroidId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractByte([BI)I
    .registers 2

    .line 106
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 p1, p1, 0x8

    shl-int/2addr p0, p1

    return p0
.end method

.method public static getAndroidIdHash()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 55
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    if-nez v0, :cond_21

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 56
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_17

    move-object v0, v1

    .line 59
    :cond_17
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 62
    :cond_21
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getUnsignedHashCached(Ljava/lang/String;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 72
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 77
    :cond_11
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v1

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    return v1

    :catchall_22
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public static getUnsignedHashUnCached(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    const-string v0, "SHA-1"

    .line 88
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->unsignedIntFromBytes([B)I

    move-result p0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static hashComponentNameForAtom(Ljava/lang/String;)I
    .registers 2

    .line 130
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static injectAndroidIdForTest(Ljava/lang/String;)V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 45
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    const/4 p0, 0x0

    .line 46
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    return-void
.end method

.method public static shouldSamplePackageForAtom(Ljava/lang/String;F)Z
    .registers 9

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_7

    return v1

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v2, 0x1

    if-ltz v0, :cond_f

    return v2

    .line 120
    :cond_f
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashCached(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v0

    xor-int/2addr p0, v0

    int-to-double v3, p0

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v3, v5

    float-to-double p0, p1

    cmpg-double p0, v3, p0

    if-gtz p0, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method public static unsignedIntFromBytes([B)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v0

    const/4 v1, 0x1

    .line 99
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 100
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 101
    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result p0

    or-int/2addr p0, v0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method
