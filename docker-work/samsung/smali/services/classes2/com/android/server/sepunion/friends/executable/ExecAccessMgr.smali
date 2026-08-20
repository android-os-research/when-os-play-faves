.class public Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionBase;
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    }
.end annotation


# static fields
.field public static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final INDEX_OF_FRS_CMD_APP:I = 0x1

.field public static final MAX_PLATFORM_PKG_COUNT:I = 0xa

.field public static final PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

.field public static final RO_OFFICIAL:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ExecAccessMgr"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPlatformPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    .line 34
    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string v2, "com.samsung.android.mateagent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg-IA;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const/16 v5, 0x20

    new-array v5, v5, [B

    fill-array-data v5, :array_2e

    const-string v6, "com.samsung.android.friendscmder"

    invoke-direct {v1, v6, v2, v5, v4}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg-IA;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const-string/jumbo v0, "ro.build.official.release"

    const-string/jumbo v1, "unknown"

    .line 47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->RO_OFFICIAL:Ljava/lang/String;

    return-void

    :array_2e
    .array-data 1
        -0x7et
        0x5et
        0x20t
        -0x5bt
        0x5dt
        0x6bt
        -0x30t
        -0x44t
        0x1et
        -0x5et
        -0x11t
        -0x23t
        -0x22t
        -0x61t
        -0x4et
        0x16t
        -0x5ct
        -0x1et
        0x43t
        -0x7ct
        0x39t
        0x3ft
        -0x48t
        -0x3dt
        0x43t
        0x9t
        0x15t
        0x6ct
        0xft
        0x2dt
        -0x7et
        -0x3ct
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    return-void
.end method

.method public static getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 3

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    .line 139
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 140
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    .line 141
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 144
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_40

    :try_start_18
    const-string p0, "X509"

    .line 145
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 146
    invoke-virtual {p0, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_36

    .line 147
    :try_start_24
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const-string p1, "SHA-256"

    .line 148
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_40

    return-object p0

    :catchall_36
    move-exception p0

    .line 144
    :try_start_37
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_3f

    :catchall_3b
    move-exception p1

    :try_start_3c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p0

    .line 151
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isCmdAppAccessible(Landroid/content/Context;)Z
    .registers 7

    .line 158
    sget-object v0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$fgetmPkgName(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v2

    .line 159
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$fgetmFingerprint(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B

    move-result-object v3

    .line 160
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$fgetmPlatformKeyOnly(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z

    move-result v0

    .line 162
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_37

    :cond_27
    if-nez v0, :cond_36

    if-eqz v3, :cond_36

    .line 165
    invoke-static {p0, v2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :cond_37
    :goto_37
    return v1
.end method

.method public static isValidAgentSvcActionFormat(I)Z
    .registers 4

    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    goto :goto_12

    :cond_8
    const/high16 v0, 0xf0000

    and-int/2addr v0, p0

    if-nez v0, :cond_e

    goto :goto_12

    :cond_e
    and-int/lit16 v0, p0, 0xfff

    if-nez v0, :cond_14

    :goto_12
    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-nez v0, :cond_26

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "ExecAccessMgr"

    const-string v2, "invalid action [0x%x]"

    invoke-static {p0, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_26
    return v0
.end method

.method public static isValidSysSvcActionFormat(I)Z
    .registers 10

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 104
    fill-array-data v1, :array_38

    new-array v2, v0, [I

    .line 106
    fill-array-data v2, :array_46

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_f
    if-ge v4, v0, :cond_32

    .line 111
    aget v7, v1, v4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_25

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1f

    .line 125
    aget v8, v2, v6

    and-int/2addr v7, p0

    if-ne v8, v7, :cond_2d

    goto :goto_2b

    :cond_1f
    and-int/2addr v7, p0

    .line 119
    aget v8, v2, v6

    if-le v7, v8, :cond_2d

    goto :goto_2b

    .line 114
    :cond_25
    aget v8, v2, v6

    and-int/2addr v7, p0

    and-int/2addr v7, v8

    if-eqz v7, :cond_2d

    :goto_2b
    add-int/lit8 v5, v5, 0x1

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_32
    const/4 p0, 0x1

    add-int/2addr v5, p0

    if-ne v5, v0, :cond_37

    move v3, p0

    :cond_37
    return v3

    :array_38
    .array-data 4
        -0x1000000
        -0x10000000
        0xf0000
        0xf000
        0xfff
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x100000
        0x70000
        0x0
        0x0
    .end array-data
.end method

.method public static throwSecurityException(ILjava/lang/String;)V
    .registers 8

    .line 57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    if-eqz p1, :cond_24

    move-object v0, p1

    goto :goto_26

    :cond_24
    const-string v0, ""

    :goto_26
    const/4 v5, 0x3

    aput-object v0, v2, v5

    const-string v0, "ExecAccessMgr"

    const-string v5, "illegal access: uid[%d] / pid[%d] / %d / %s"

    invoke-static {v0, v5, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/SecurityException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%s: reason(%d)"

    invoke-static {p0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addPlatformPkg(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v1

    .line 217
    :try_start_7
    iget-object v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 219
    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_24

    const-string p0, "ExecAccessMgr"

    const-string p1, "exceeds max count"

    new-array v2, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {p0, p1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    monitor-exit v1

    return v0

    :cond_24
    if-nez v2, :cond_2b

    .line 224
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2b
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 5

    const-string/jumbo p2, "paramStr0"

    packed-switch p3, :pswitch_data_54

    goto :goto_52

    :pswitch_7
    if-eqz p1, :cond_52

    .line 327
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string/jumbo v0, "paramBool0"

    .line 328
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 327
    invoke-virtual {p0, p2, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->removePlatformPkg(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_53

    .line 322
    :pswitch_1e
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getRegisteredPlatformPkgs()Ljava/util/List;

    move-result-object p0

    const-string/jumbo p2, "paramList0"

    invoke-virtual {p1, p2, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_53

    :pswitch_32
    if-eqz p1, :cond_52

    .line 317
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->addPlatformPkg(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_53

    .line 312
    :pswitch_41
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    const/4 p1, 0x4

    const-string/jumbo p2, "paramInt0"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_53

    :cond_52
    :goto_52
    const/4 p0, 0x0

    :goto_53
    return-object p0

    :pswitch_data_54
    .packed-switch 0x120006
        :pswitch_41
        :pswitch_32
        :pswitch_1e
        :pswitch_7
    .end packed-switch
.end method

.method public final getRegisteredPlatformPkgs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    .line 233
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 234
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final hasPlatformPkg(Ljava/lang/String;)Z
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_11

    .line 207
    :try_start_5
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catchall_f
    move-exception p0

    goto :goto_14

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    .line 208
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_f

    throw p0
.end method

.method public isAccessible(I)Z
    .registers 9

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 276
    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidSysSvcActionFormat(I)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "ExecAccessMgr"

    const/4 v5, 0x0

    if-nez v2, :cond_18

    invoke-static {p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isValidAgentSvcActionFormat(I)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_18
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_2f

    .line 279
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->getProcessSystemUid()I

    move-result p0

    if-ne v0, p0, :cond_25

    move p0, v3

    goto :goto_26

    :cond_25
    move p0, v5

    :goto_26
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "system uid"

    .line 280
    invoke-static {v4, v6, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_54

    :cond_2f
    const/high16 v2, 0x20000

    and-int/2addr v2, p1

    if-eqz v2, :cond_41

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isPrivilegedPkg(I)Z

    move-result p0

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "privileged uid"

    .line 286
    invoke-static {v4, v6, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_54

    :cond_41
    const/high16 v2, 0x40000

    and-int/2addr v2, p1

    if-eqz v2, :cond_53

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isRegisteredPlatformPkg(I)Z

    move-result p0

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "platform key signed pkg"

    .line 292
    invoke-static {v4, v6, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_54

    :cond_53
    move p0, v5

    :goto_54
    if-nez p0, :cond_71

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "isAccessible returns false / action[0x%x], uid [%d], pid[%d]"

    invoke-static {v4, p1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_71
    return p0
.end method

.method public final isPrivilegedPkg(I)Z
    .registers 15

    .line 170
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_79

    .line 173
    array-length v3, v1

    if-nez v3, :cond_12

    goto/16 :goto_79

    .line 178
    :cond_12
    array-length v3, v1

    move v4, v2

    :goto_14
    const/4 v5, 0x1

    if-ge v4, v3, :cond_36

    aget-object v6, v1, v4

    .line 179
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 180
    sget-object v7, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v8, v7

    move v9, v2

    :goto_23
    if-ge v9, v8, :cond_33

    aget-object v10, v7, v9

    if-eqz v10, :cond_30

    .line 181
    invoke-static {v10, v6, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$misCachedGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_30

    return v5

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 189
    :cond_36
    array-length v3, v1

    move v4, v2

    :goto_38
    if-ge v4, v3, :cond_6a

    aget-object v6, v1, v4

    .line 190
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 191
    iget-object v7, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->getPackageFingerprint(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v7

    .line 192
    sget-object v8, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->PRIVILEGED_PACKAGES:[Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    array-length v9, v8

    move v10, v2

    :goto_4c
    if-ge v10, v9, :cond_67

    aget-object v11, v8, v10

    .line 193
    invoke-static {v11}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$fgetmPkgName(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    invoke-static {v11, v0, v6, v7}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$misGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 194
    invoke-static {v11, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->-$$Nest$msetCachedGranted(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V

    return v5

    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_6a
    new-array p0, v5, [Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "ExecAccessMgr"

    const-string v0, "isPrivilegedPkg uid[%d] is invalid"

    invoke-static {p1, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_79
    :goto_79
    return v2
.end method

.method public final isRegisteredPlatformPkg(I)Z
    .registers 8

    .line 255
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExecAccessMgr"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3a

    .line 258
    array-length v5, v1

    if-lez v5, :cond_3a

    .line 259
    aget-object v1, v1, v4

    if-eqz v1, :cond_3a

    .line 260
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->hasPlatformPkg(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const-string p0, "android"

    .line 261
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3a

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 262
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "isRegisteredPlatformPkg pkg[%s] uid[%s] is valid"

    invoke-static {v2, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v3

    :cond_3a
    new-array p0, v3, [Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "isRegisteredPlatformPkg uid[%d] is invalid"

    invoke-static {v2, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v4
.end method

.method public final removePlatformPkg(Ljava/lang/String;Z)Z
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 240
    :try_start_6
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 241
    monitor-exit v0

    return v1

    :catchall_d
    move-exception p0

    goto :goto_2c

    :cond_f
    if-eqz p1, :cond_20

    .line 244
    iget-object p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 245
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->mPlatformPkgList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v0

    return v1

    .line 248
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_d

    const-string p0, "ExecAccessMgr"

    const-string p1, "failed to remove platform pkg"

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    .line 250
    invoke-static {p0, p1, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return p2

    .line 248
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_d

    throw p0
.end method
