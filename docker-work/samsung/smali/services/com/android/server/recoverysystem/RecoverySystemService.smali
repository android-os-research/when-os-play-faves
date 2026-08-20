.class public Lcom/android/server/recoverysystem/RecoverySystemService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"

# interfaces
.implements Lcom/android/internal/widget/RebootEscrowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;,
        Lcom/android/server/recoverysystem/RecoverySystemService$Injector;,
        Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;,
        Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;,
        Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnClear;,
        Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnRequest;
    }
.end annotation


# static fields
.field public static final AB_UPDATE:Ljava/lang/String; = "ro.build.ab_update"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final APEX_INFO_SIZE_LIMIT:J = 0x258000L

.field public static final DEBUG:Z = false

.field public static final FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FastImmutableArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INIT_SERVICE_CLEAR_BCB:Ljava/lang/String; = "init.svc.clear-bcb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INIT_SERVICE_SETUP_BCB:Ljava/lang/String; = "init.svc.setup-bcb"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final INIT_SERVICE_UNCRYPT:Ljava/lang/String; = "init.svc.uncrypt"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final LSKF_CAPTURED_COUNT_PREF:Ljava/lang/String; = "lskf_captured_count"

.field public static final LSKF_CAPTURED_TIMESTAMP_PREF:Ljava/lang/String; = "lskf_captured_timestamp"

.field public static final REQUEST_LSKF_COUNT_PREF_SUFFIX:Ljava/lang/String; = "_request_lskf_count"

.field public static final REQUEST_LSKF_TIMESTAMP_PREF_SUFFIX:Ljava/lang/String; = "_request_lskf_timestamp"

.field public static final ROR_NEED_PREPARATION:I = 0x0

.field public static final ROR_NOT_REQUESTED:I = 0x0

.field public static final ROR_REQUESTED_NEED_CLEAR:I = 0x1

.field public static final ROR_REQUESTED_SKIP_CLEAR:I = 0x2

.field public static final ROR_SKIP_PREPARATION_AND_NOTIFY:I = 0x1

.field public static final ROR_SKIP_PREPARATION_NOT_NOTIFY:I = 0x2

.field public static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field public static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"

.field public static final sRequestLock:Ljava/lang/Object;


# instance fields
.field public final mCallerPendingRequest:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallerPreparedForReboot:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;


# direct methods
.method public static synthetic $r8$lambda$afeSNyx9k0owE1yKBfcEslbjNCA(I)[Landroid/apex/CompressedApexInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->lambda$getCompressedApexInfoList$2(I)[Landroid/apex/CompressedApexInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$k5b6zfb-HxA0U0GmwgX7Mgx7kQk(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->lambda$getCompressedApexInfoList$0(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ljWAkCRCnNZ_YG4A_oZb3uYOv9Y(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->lambda$getCompressedApexInfoList$1(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 7

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Landroid/util/FastImmutableArraySet;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x2

    .line 177
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x3

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x4

    .line 179
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x6

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 391
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService$Injector;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 395
    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    .line 125
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    .line 396
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 397
    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RecoverySystemService"

    .line 929
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_7
    const-string p0, "apex_info.pb"

    .line 930
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_eb

    if-nez p0, :cond_14

    const/4 p0, 0x0

    .line 967
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    .line 934
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x258000

    cmp-long v2, v2, v4

    if-gez v2, :cond_c8

    .line 939
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_37

    .line 940
    new-instance p0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {p0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/apex/CompressedApexInfo;

    .line 941
    iput-object v0, p0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_eb

    .line 967
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    .line 944
    :cond_37
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes of memory to store OTA Metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v3, v2, [B

    .line 948
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_5f
    .catchall {:try_start_37 .. :try_end_5f} :catchall_eb

    .line 949
    :try_start_5f
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " when expecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 951
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_5f .. :try_end_7f} :catchall_bc

    if-ne v4, v2, :cond_b6

    .line 955
    :try_start_81
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 956
    invoke-static {v3}, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;

    move-result-object p0

    .line 957
    new-instance v0, Landroid/apex/CompressedApexInfoList;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfoList;-><init>()V

    .line 958
    iget-object p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexMetadata;->apexInfo:[Landroid/ota/nano/OtaPackageMetadata$ApexInfo;

    .line 959
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$$ExternalSyntheticLambda2;-><init>()V

    .line 965
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/apex/CompressedApexInfo;

    iput-object p0, v0, Landroid/apex/CompressedApexInfoList;->apexInfos:[Landroid/apex/CompressedApexInfo;
    :try_end_b2
    .catchall {:try_start_81 .. :try_end_b2} :catchall_eb

    .line 967
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-object v0

    .line 953
    :cond_b6
    :try_start_b6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v0

    if-eqz p0, :cond_c7

    .line 948
    :try_start_bf
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c3

    goto :goto_c7

    :catchall_c3
    move-exception p0

    :try_start_c4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c7
    :goto_c7
    throw v0

    .line 935
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apex_info.pb has size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " which is larger than the permitted limit"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_eb
    .catchall {:try_start_c4 .. :try_end_eb} :catchall_eb

    :catchall_eb
    move-exception p0

    .line 929
    :try_start_ec
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f4

    :catchall_f0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f4
    throw p0
.end method

.method public static isUpdatableApexSupported()Z
    .registers 2

    .line 921
    invoke-static {}, Landroid/sysprop/ApexProperties;->updatable()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getCompressedApexInfoList$0(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Z
    .registers 1

    .line 959
    iget-boolean p0, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->isCompressed:Z

    return p0
.end method

.method public static synthetic lambda$getCompressedApexInfoList$1(Landroid/ota/nano/OtaPackageMetadata$ApexInfo;)Landroid/apex/CompressedApexInfo;
    .registers 4

    .line 960
    new-instance v0, Landroid/apex/CompressedApexInfo;

    invoke-direct {v0}, Landroid/apex/CompressedApexInfo;-><init>()V

    .line 961
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/apex/CompressedApexInfo;->moduleName:Ljava/lang/String;

    .line 962
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->decompressedSize:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->decompressedSize:J

    .line 963
    iget-wide v1, p0, Landroid/ota/nano/OtaPackageMetadata$ApexInfo;->version:J

    iput-wide v1, v0, Landroid/apex/CompressedApexInfo;->versionCode:J

    return-object v0
.end method

.method public static synthetic lambda$getCompressedApexInfoList$2(I)[Landroid/apex/CompressedApexInfo;
    .registers 1

    .line 965
    new-array p0, p0, [Landroid/apex/CompressedApexInfo;

    return-object p0
.end method


# virtual methods
.method public allocateSpaceForUpdate(Ljava/lang/String;)Z
    .registers 6

    .line 972
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.RECOVERY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Lcom/android/server/recoverysystem/RecoverySystemService;->isUpdatableApexSupported()Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "RecoverySystemService"

    if-nez p0, :cond_17

    const-string p0, "Updatable Apex not supported, allocateSpaceForUpdate does nothing."

    .line 974
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 978
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 980
    :try_start_1b
    invoke-static {p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->getCompressedApexInfoList(Ljava/lang/String;)Landroid/apex/CompressedApexInfoList;

    move-result-object p0

    if-nez p0, :cond_2a

    const-string p0, "apex_info.pb not present in OTA package. Assuming device doesn\'t support compressedAPEX, continueing without allocating space."

    .line 982
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_37
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1b .. :try_end_26} :catch_37
    .catchall {:try_start_1b .. :try_end_26} :catchall_35

    .line 995
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 987
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p1

    .line 988
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ApexManager;->reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_37
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2a .. :try_end_31} :catch_37
    .catchall {:try_start_2a .. :try_end_31} :catchall_35

    .line 995
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_35
    move-exception p0

    goto :goto_47

    :catch_37
    move-exception p0

    :try_start_38
    const-string p1, "Failed to reserve space for compressed apex: "

    .line 993
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 991
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_35

    .line 995
    :goto_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 996
    throw p0
.end method

.method public final armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
    .registers 6

    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_12

    const-string p0, "Missing packageName when rebooting with lskf."

    .line 792
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0x7d0

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 796
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->isLskfCaptured(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 797
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0xbb8

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 801
    :cond_20
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->verifySlotForNextBoot(Z)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 802
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/16 p1, 0xfa0

    invoke-direct {p0, p1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    .line 806
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 809
    :try_start_32
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object p0

    const/16 v2, 0x1388

    if-nez p0, :cond_4b

    const-string p0, "Failed to get lock settings service, skipping armRebootEscrow"

    .line 811
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_74

    .line 819
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 817
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockSettingsInternal;->armRebootEscrow()I

    move-result p0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_74

    .line 819
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_6e

    .line 823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failure to escrow key for reboot, providerErrorCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {p1, v2, p0}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p1

    .line 829
    :cond_6e
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    invoke-direct {p0, v1, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;-><init>(II)V

    return-object p0

    :catchall_74
    move-exception p0

    .line 819
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw p0
.end method

.method public final checkAndWaitForUncryptService()Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_51

    .line 1024
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v3, "init.svc.uncrypt"

    invoke-virtual {v2, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v4, "init.svc.setup-bcb"

    invoke-virtual {v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1026
    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v5, "init.svc.clear-bcb"

    invoke-virtual {v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    .line 1027
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_3a

    .line 1028
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_3a

    :cond_38
    move v2, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v2, v6

    :goto_3b
    if-nez v2, :cond_3e

    return v6

    .line 1041
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->threadSleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_4e

    :catch_46
    move-exception v2

    const-string v3, "RecoverySystemService"

    const-string v4, "Interrupted:"

    .line 1043
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_51
    return v0
.end method

.method public clearBcb()Z
    .registers 4

    .line 498
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 499
    :try_start_5
    invoke-virtual {p0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 500
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public clearLskf(Ljava/lang/String;)Z
    .registers 6

    .line 691
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    const/4 v0, 0x0

    const-string v1, "RecoverySystemService"

    if-nez p1, :cond_e

    const-string p0, "Missing packageName when clearing lskf."

    .line 693
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 698
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnClear(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    if-eq v2, v3, :cond_32

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1b

    return v3

    .line 720
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action type on clear "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 706
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 708
    :try_start_36
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object p0

    if-nez p0, :cond_47

    const-string p0, "Failed to get lock settings service, skipping clearRebootEscrow"

    .line 710
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_4f

    .line 717
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .line 715
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lcom/android/internal/widget/LockSettingsInternal;->clearRebootEscrow()Z

    move-result p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    .line 717
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_4f
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    throw p0

    .line 701
    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RoR clear called before preparation for caller "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final declared-synchronized clearRoRPreparationState()V
    .registers 2

    monitor-enter p0

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 874
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 875
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 4

    .line 878
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->FATAL_ARM_ESCROW_ERRORS:Landroid/util/FastImmutableArraySet;

    iget v1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 882
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing resume on reboot states for all clients on arm escrow error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecoverySystemService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V

    return-void
.end method

.method public final enforcePermissionForResumeOnReboot()V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.REBOOT"

    .line 536
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1d

    .line 538
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must have android.permission.RECOVERY or android.permission.REBOOT for resume on reboot."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final enforceShell()V
    .registers 2

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isCallerShell()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1203
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller must be shell"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAbDevice()Z
    .registers 2

    .line 740
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v0, "ro.build.ab_update"

    invoke-virtual {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 1197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isLskfCaptured(Ljava/lang/String;)Z
    .registers 4

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 1004
    monitor-enter p0

    .line 1005
    :try_start_4
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1006
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_27

    if-nez v0, :cond_25

    const-string p0, "RecoverySystemService"

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reboot requested before prepare completed for caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p1

    .line 1006
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public onPreparedForReboot(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 658
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnPreparedForReboot()V

    .line 659
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnPreparedForReboot()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforceShell()V

    .line 1211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1213
    :try_start_7
    new-instance v3, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;

    move-object v0, p0

    invoke-direct {v3, p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;-><init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1d

    .line 1216
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    throw v0
.end method

.method public onSystemServicesReady()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "RecoverySystemService"

    const-string v0, "Failed to get lock settings service, skipping set RebootEscrowListener"

    .line 404
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    return-void
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 6

    .line 514
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 515
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 516
    monitor-exit v0

    return-void

    .line 520
    :cond_c
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    const-string v1, "RecoverySystemService"

    const-string v2, "!@[RecoverySystemService] rebootRecoveryWithCommand: [reset tracking] write to recovery_cause"

    .line 522
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_52

    .line 523
    :try_start_19
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_42
    .catchall {:try_start_19 .. :try_end_20} :catchall_52

    .line 524
    :try_start_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecoverySystemService rebootRecoveryWithCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_38

    .line 525
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_42
    .catchall {:try_start_34 .. :try_end_37} :catchall_52

    goto :goto_4a

    :catchall_38
    move-exception p1

    .line 523
    :try_start_39
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception v1

    :try_start_3e
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_41
    throw p1
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_52

    :catch_42
    move-exception p1

    :try_start_43
    const-string v1, "RecoverySystemService"

    const-string v2, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    .line 526
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    const-string/jumbo p1, "recovery"

    .line 529
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 530
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 4
    .annotation build Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    .end annotation

    .line 916
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    .line 917
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation build Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final rebootWithLskfImpl(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5
    .annotation build Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    .end annotation

    .line 889
    invoke-virtual {p0, p1, p3}, Lcom/android/server/recoverysystem/RecoverySystemService;->armRebootEscrow(Ljava/lang/String;Z)Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;

    move-result-object v0

    .line 890
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 891
    invoke-virtual {p0, v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationStateOnRebootFailure(Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V

    .line 893
    iget p1, v0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    if-eqz p1, :cond_f

    return p1

    .line 899
    :cond_f
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->deletePrefsFile()V

    .line 901
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    .line 902
    invoke-virtual {p0, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    const/16 p0, 0x3e8

    return p0
.end method

.method public final reportMetricsOnPreparedForReboot()V
    .registers 15

    .line 625
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 628
    monitor-enter p0

    .line 629
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 630
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_7f

    .line 633
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "lskf_captured_timestamp"

    .line 634
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "lskf_captured_count"

    const/4 v5, 0x0

    .line 635
    invoke-virtual {v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 637
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 638
    iget-object v7, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v7, v6}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    .line 641
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_request_lskf_timestamp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x1

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-eqz v9, :cond_5d

    cmp-long v9, v0, v12

    if-lez v9, :cond_5d

    sub-long v8, v0, v12

    long-to-int v8, v8

    .line 644
    div-int/lit16 v8, v8, 0x3e8

    :cond_5d
    const-string v9, "RecoverySystemService"

    const-string v10, "Reporting lskf captured, lskf capture takes %d seconds for package %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    .line 647
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const/4 v12, 0x1

    aput-object v6, v11, v12

    .line 646
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v6, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v6, v7, v9, v8}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowLskfCapturedMetrics(III)V

    goto :goto_26

    :cond_7e
    return-void

    :catchall_7f
    move-exception v0

    .line 630
    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public final reportMetricsOnRebootWithLskf(Ljava/lang/String;ZLcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;)V
    .registers 14

    .line 845
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v3

    .line 846
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->useServerBasedRoR()Z

    move-result v7

    .line 848
    monitor-enter p0

    .line 849
    :try_start_b
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 850
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_8b

    .line 852
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 854
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    const-string/jumbo v5, "lskf_captured_timestamp"

    const-wide/16 v8, -0x1

    .line 855
    invoke-virtual {v2, v5, v8, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v8, v5, v8

    const/4 v9, -0x1

    if-eqz v8, :cond_36

    cmp-long v8, v0, v5

    if-lez v8, :cond_36

    sub-long/2addr v0, v5

    long-to-int v0, v0

    .line 857
    div-int/lit16 v0, v0, 0x3e8

    move v8, v0

    goto :goto_37

    :cond_36
    move v8, v9

    .line 860
    :goto_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_request_lskf_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "lskf_captured_count"

    .line 861
    invoke-virtual {v2, v0, v9}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "RecoverySystemService"

    const-string v1, "Reporting reboot with lskf, package name %s, client count %d, request count %d, lskf captured count %d, duration since lskf captured %d seconds."

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    const/4 p1, 0x1

    .line 865
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p1

    const/4 p1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p1

    const/4 p1, 0x3

    .line 866
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p1

    const/4 p1, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, p1

    .line 863
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p3}, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->getErrorCodeForMetrics()I

    move-result v2

    move v6, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowRebootMetrics(IIIIZZII)V

    return-void

    :catchall_8b
    move-exception p1

    .line 850
    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p1
.end method

.method public final reportMetricsOnRequestLskf(Ljava/lang/String;I)V
    .registers 9

    .line 544
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    .line 546
    monitor-enter p0

    .line 547
    :try_start_7
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 548
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_49

    .line 551
    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    move-result-object v2

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_request_lskf_timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 553
    invoke-virtual {v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 552
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_request_lskf_count"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;->incrementIntKey(Ljava/lang/String;I)V

    .line 556
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->reportRebootEscrowPreparationMetrics(III)V

    return-void

    :catchall_49
    move-exception p1

    .line 548
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 7

    .line 561
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->enforcePermissionForResumeOnReboot()V

    const-string v0, "RecoverySystemService"

    const/4 v1, 0x0

    if-nez p1, :cond_e

    const-string p0, "Missing packageName when requesting lskf."

    .line 564
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 568
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I

    move-result v2

    .line 570
    invoke-virtual {p0, p1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;->reportMetricsOnRequestLskf(Ljava/lang/String;I)V

    const/4 p1, 0x1

    if-eqz v2, :cond_39

    if-eq v2, p1, :cond_35

    const/4 p0, 0x2

    if-ne v2, p0, :cond_1e

    return p1

    .line 598
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported action type on new request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 575
    :cond_35
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    return p1

    .line 580
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 582
    :try_start_3d
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p2}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;

    move-result-object p2

    if-nez p2, :cond_4e

    const-string p0, "Failed to get lock settings service, skipping prepareRebootEscrow"

    .line 584
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_5f

    .line 595
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 589
    :cond_4e
    :try_start_4e
    invoke-virtual {p2}, Lcom/android/internal/widget/LockSettingsInternal;->prepareRebootEscrow()Z

    move-result p2

    if-nez p2, :cond_5b

    .line 590
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->clearRoRPreparationState()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5f

    .line 595
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_5b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_5f
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    throw p0
.end method

.method public final sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V
    .registers 8

    if-eqz p1, :cond_27

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 682
    :try_start_8
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_27

    :catch_c
    move-exception p0

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not send intent for prepared reboot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverySystemService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4

    .line 506
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 507
    :try_start_4
    invoke-virtual {p0, v1, p1}, Lcom/android/server/recoverysystem/RecoverySystemService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 508
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 8

    .line 1051
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_18

    const-string/jumbo p0, "uncrypt service is unavailable."

    .line 1055
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    const-string v0, "ctl.start"

    if-eqz p1, :cond_25

    .line 1060
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string/jumbo v4, "setup-bcb"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 1062
    :cond_25
    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v4, "clear-bcb"

    invoke-virtual {v3, v0, v4}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_2c
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_3a

    const-string p0, "Failed to connect to uncrypt socket"

    .line 1068
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3a
    if-eqz p1, :cond_3f

    .line 1075
    :try_start_3c
    invoke-virtual {p0, p2}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendCommand(Ljava/lang/String;)V

    .line 1079
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result p2

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_71

    .line 1086
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uncrypt "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5b

    const-string/jumbo p1, "setup"

    goto :goto_5d

    :cond_5b
    const-string p1, "clear"

    :goto_5d
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bcb successfully finished."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6c} :catch_8c
    .catchall {:try_start_3c .. :try_end_6c} :catchall_8a

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x1

    return p0

    .line 1090
    :cond_71
    :try_start_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "uncrypt failed with status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_86} :catch_8c
    .catchall {:try_start_71 .. :try_end_86} :catchall_8a

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    :catchall_8a
    move-exception p1

    goto :goto_96

    :catch_8c
    move-exception p1

    :try_start_8d
    const-string p2, "IOException when communicating with uncrypt:"

    .line 1094
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_8a

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    return v1

    :goto_96
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 1098
    throw p1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 10

    .line 415
    sget-object v0, Lcom/android/server/recoverysystem/RecoverySystemService;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->checkAndWaitForUncryptService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const-string p0, "RecoverySystemService"

    const-string/jumbo p1, "uncrypt service is unavailable."

    .line 419
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v0

    return v2

    .line 425
    :cond_1c
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->uncryptPackageFileDelete()Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_106

    .line 427
    :try_start_21
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {v1}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileWriter()Ljava/io/FileWriter;

    move-result-object v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_e2
    .catchall {:try_start_21 .. :try_end_27} :catchall_106

    .line 428
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_d6

    .line 429
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_e2
    .catchall {:try_start_3b .. :try_end_3e} :catchall_106

    .line 436
    :try_start_3e
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    const-string v1, "ctl.start"

    const-string/jumbo v3, "uncrypt"

    invoke-virtual {p1, v1, v3}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    move-result-object p0

    if-nez p0, :cond_59

    const-string p0, "RecoverySystemService"

    const-string p1, "Failed to connect to uncrypt socket"

    .line 441
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_106

    return v2

    :cond_59
    const/high16 p1, -0x80000000

    move v1, p1

    .line 449
    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->getPercentageUncrypted()I

    move-result v3

    if-ne v3, v1, :cond_65

    if-eq v1, p1, :cond_65

    goto :goto_5c

    :cond_65
    if-ltz v3, :cond_a4

    const/16 v1, 0x64

    if-gt v3, v1, :cond_a4

    const-string v4, "RecoverySystemService"

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncrypt read status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_82} :catch_c5
    .catchall {:try_start_5c .. :try_end_82} :catchall_c3

    if-eqz p2, :cond_8f

    .line 461
    :try_start_84
    invoke-interface {p2, v3}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_c5
    .catchall {:try_start_84 .. :try_end_87} :catchall_c3

    goto :goto_8f

    :catch_88
    :try_start_88
    const-string v4, "RecoverySystemService"

    const-string v5, "RemoteException when posting progress"

    .line 463
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    :goto_8f
    if-ne v3, v1, :cond_a2

    const-string p1, "RecoverySystemService"

    const-string/jumbo p2, "uncrypt successfully finished."

    .line 467
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_9c} :catch_c5
    .catchall {:try_start_88 .. :try_end_9c} :catchall_c3

    .line 488
    :try_start_9c
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x1

    .line 491
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_106

    return p0

    :cond_a2
    move v1, v3

    goto :goto_5c

    :cond_a4
    :try_start_a4
    const-string p1, "RecoverySystemService"

    .line 476
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uncrypt failed with status: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->sendAck()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_be} :catch_c5
    .catchall {:try_start_a4 .. :try_end_be} :catchall_c3

    .line 488
    :try_start_be
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_106

    return v2

    :catchall_c3
    move-exception p1

    goto :goto_d2

    :catch_c5
    move-exception p1

    :try_start_c6
    const-string p2, "RecoverySystemService"

    const-string v1, "IOException when reading status: "

    .line 485
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_c3

    .line 488
    :try_start_cd
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    monitor-exit v0

    return v2

    :goto_d2
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    .line 489
    throw p1
    :try_end_d6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_106

    :catchall_d6
    move-exception p1

    if-eqz v1, :cond_e1

    .line 427
    :try_start_d9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e1

    :catchall_dd
    move-exception p2

    :try_start_de
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e1
    :goto_e1
    throw p1
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e2} :catch_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_106

    :catch_e2
    move-exception p1

    :try_start_e3
    const-string p2, "RecoverySystemService"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when writing \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    .line 431
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getUncryptPackageFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 430
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    monitor-exit v0

    return v2

    :catchall_106
    move-exception p0

    .line 492
    monitor-exit v0
    :try_end_108
    .catchall {:try_start_e3 .. :try_end_108} :catchall_106

    throw p0
.end method

.method public final declared-synchronized updateRoRPreparationStateOnClear(Ljava/lang/String;)I
    .registers 5
    .annotation build Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnClear;
    .end annotation

    monitor-enter p0

    .line 726
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "RecoverySystemService"

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t prepared for resume on reboot"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_4c

    .line 729
    monitor-exit p0

    return v1

    .line 731
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 735
    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_4c

    if-eqz p1, :cond_46

    move v1, v0

    :cond_46
    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x2

    .line 736
    :goto_4a
    monitor-exit p0

    return v0

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateRoRPreparationStateOnNewRequest(Ljava/lang/String;Landroid/content/IntentSender;)I
    .registers 7
    .annotation build Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnRequest;
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 606
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    const-string p2, "RecoverySystemService"

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoR already has prepared for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_27
    iget-object p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_5f

    const/4 p1, 0x1

    .line 612
    monitor-exit p0

    return p1

    .line 615
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    .line 616
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "RecoverySystemService"

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate RoR preparation request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_53
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_2f .. :try_end_58} :catchall_5f

    if-eqz v0, :cond_5c

    const/4 p1, 0x0

    goto :goto_5d

    :cond_5c
    const/4 p1, 0x2

    .line 621
    :goto_5d
    monitor-exit p0

    return p1

    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateRoRPreparationStateOnPreparedForReboot()V
    .registers 4

    monitor-enter p0

    .line 663
    :try_start_1
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called when some clients have prepared."

    .line 664
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_11
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "RecoverySystemService"

    const-string/jumbo v1, "onPreparedForReboot called but no client has requested."

    .line 668
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const/4 v0, 0x0

    .line 672
    :goto_22
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 673
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    invoke-virtual {p0, v1}, Lcom/android/server/recoverysystem/RecoverySystemService;->sendPreparedForRebootIntentIfNeeded(Landroid/content/IntentSender;)V

    .line 674
    iget-object v1, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPreparedForReboot:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 676
    :cond_45
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mCallerPendingRequest:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 677
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final useServerBasedRoR()Z
    .registers 5

    .line 834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo p0, "ota"

    const-string/jumbo v2, "server_based_ror_enabled"

    const/4 v3, 0x0

    .line 836
    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 839
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    throw p0
.end method

.method public final verifySlotForNextBoot(Z)Z
    .registers 6

    .line 744
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->isAbDevice()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecoverySystemService"

    if-nez v0, :cond_f

    const-string p0, "Device isn\'t a/b, skipping slot verification."

    .line 745
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    const/4 v0, 0x0

    .line 751
    :try_start_10
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService;->mInjector:Lcom/android/server/recoverysystem/RecoverySystemService$Injector;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->getBootControl()Landroid/hardware/boot/V1_2/IBootControl;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_70

    if-nez p0, :cond_1e

    const-string p0, "Cannot get the boot control HAL, skipping slot verification."

    .line 759
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 766
    :cond_1e
    :try_start_1e
    invoke-interface {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getCurrentSlot()I

    move-result v3

    if-eqz v3, :cond_3e

    if-ne v3, v1, :cond_27

    goto :goto_3e

    .line 768
    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current boot slot should be 0 or 1, got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 771
    :cond_3e
    :goto_3e
    invoke-interface {p0}, Landroid/hardware/boot/V1_2/IBootControl;->getActiveBootSlot()I

    move-result p0
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_42} :catch_69

    if-eqz p1, :cond_49

    if-nez v3, :cond_48

    move v3, v1

    goto :goto_49

    :cond_48
    move v3, v0

    :cond_49
    :goto_49
    if-eq p0, v3, :cond_68

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The next active boot slot doesn\'t match the expected value, expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_68
    return v1

    :catch_69
    move-exception p0

    const-string p1, "Failed to query the active slots"

    .line 773
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_70
    move-exception p0

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get the boot control HAL "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
