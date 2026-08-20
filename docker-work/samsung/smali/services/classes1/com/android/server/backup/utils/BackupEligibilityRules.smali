.class public Lcom/android/server/backup/utils/BackupEligibilityRules;
.super Ljava/lang/Object;
.source "BackupEligibilityRules.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final IGNORE_ALLOW_BACKUP_IN_D2D:J = 0xaea9af1L

.field public static final RESTRICT_ADB_BACKUP:J = 0xa31bf12L

.field public static final systemPackagesAllowedForAllUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mOperationType:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "@pm@"

    const-string v1, "android"

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForAllUsers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 96
    iput p3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 97
    iput p4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    return-void
.end method

.method public static forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .registers 5

    .line 86
    new-instance v0, Lcom/android/server/backup/utils/BackupEligibilityRules;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;II)V

    return-object v0
.end method


# virtual methods
.method public appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 297
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    .line 299
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    const/4 p1, 0x2

    if-eq p0, p1, :cond_18

    const/4 p1, 0x3

    if-eq p0, p1, :cond_18

    const/4 p1, 0x4

    if-eq p0, p1, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    return v0

    .line 269
    :cond_19
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 124
    :cond_8
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 127
    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForAllUsers:Ljava/util/Set;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 128
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 133
    :cond_1f
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_24

    return v1

    .line 139
    :cond_24
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 144
    :cond_2f
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_36

    return v1

    .line 148
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 230
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x8000000

    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 232
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_4e

    if-eqz v1, :cond_20

    goto :goto_4e

    :cond_20
    if-eqz p1, :cond_4c

    :try_start_22
    const-string v1, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    .line 241
    invoke-virtual {p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    .line 243
    invoke-virtual {p1, p2, p0}, Lcom/android/server/backup/transport/BackupTransportClient;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_31

    return p0

    :catch_31
    move-exception p0

    :try_start_32
    const-string p1, "BackupManagerService"

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to ask about eligibility: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_4c} :catch_4e

    :cond_4c
    const/4 p0, 0x1

    return p0

    :catch_4e
    :cond_4e
    :goto_4e
    return v0
.end method

.method public appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 288
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getOperationType()I
    .registers 1

    .line 400
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    return p0
.end method

.method public isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z
    .registers 10

    .line 160
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 161
    :goto_d
    iget v4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    if-eqz v4, :cond_b0

    if-eq v4, v3, :cond_8e

    const/4 v0, 0x3

    const-string v5, "BackupManagerService"

    if-eq v4, v0, :cond_2f

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown operation type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mOperationType:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 170
    :cond_2f
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_39

    const-string p0, "Invalid ApplicationInfo object"

    .line 172
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_39
    const-wide/32 v6, 0xa31bf12

    .line 176
    iget v4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 177
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 176
    invoke-static {v6, v7, v0, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_49

    return v1

    :cond_49
    const-string v4, "android"

    .line 181
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    return v3

    .line 188
    :cond_52
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_5a

    move v6, v3

    goto :goto_5b

    :cond_5a
    move v6, v2

    :goto_5b
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_60

    move v2, v3

    .line 190
    :cond_60
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p1

    if-nez p1, :cond_6c

    if-eqz v6, :cond_6b

    goto :goto_6c

    :cond_6b
    return v2

    .line 192
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "android.backup.ALLOW_ADB_BACKUP"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_78} :catch_79

    return p0

    .line 195
    :catch_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to read allowAdbBackup property for + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8e
    and-int/2addr v0, v3

    if-eqz v0, :cond_93

    move v0, v3

    goto :goto_94

    :cond_93
    move v0, v2

    :goto_94
    if-nez v0, :cond_a9

    const-wide/32 v4, 0xaea9af1

    .line 166
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    .line 167
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 166
    invoke-static {v4, v5, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_a9

    move p0, v3

    goto :goto_aa

    :cond_a9
    move p0, v2

    :goto_aa
    if-nez p0, :cond_ae

    if-eqz v1, :cond_af

    :cond_ae
    move v2, v3

    :cond_af
    return v2

    :cond_b0
    return v1
.end method

.method public signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_55

    .line 333
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_55

    .line 342
    :cond_8
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    return v2

    .line 350
    :cond_11
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    .line 354
    :cond_18
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v1, :cond_25

    const-string p0, "BackupManagerService"

    const-string/jumbo p1, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    .line 356
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 366
    :cond_25
    array-length v3, p1

    if-ne v3, v2, :cond_33

    .line 373
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    aget-object p1, p1, v0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 378
    :cond_33
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 379
    array-length p2, p0

    move v1, v0

    :goto_39
    if-ge v1, v3, :cond_54

    move v4, v0

    :goto_3c
    if-ge v4, p2, :cond_4d

    .line 385
    aget-object v5, p1, v1

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    move v4, v2

    goto :goto_4e

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4d
    move v4, v0

    :goto_4e
    if-nez v4, :cond_51

    return v0

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_54
    return v2

    :cond_55
    :goto_55
    return v0
.end method
