.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;,
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field public static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field public static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final DEBUG:Z = false

.field public static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field public static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field public static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field public static final STATE_FILE_VERSION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PMBA"

.field public static final UNDEFINED_ANCESTRAL_RECORD_VERSION:I = -0x1


# instance fields
.field public mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHasMetadata:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mRestoredHome:Landroid/content/ComponentName;

.field public mRestoredHomeInstaller:Ljava/lang/String;

.field public mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public mRestoredHomeVersion:J

.field public mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public mStoredHomeComponent:Landroid/content/ComponentName;

.field public mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public mStoredHomeVersion:J

.field public mStoredIncrementalVersion:Ljava/lang/String;

.field public mStoredSdkVersion:I

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmHasMetadata(Lcom/android/server/backup/PackageManagerBackupAgent;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHome(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeInstaller(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeSigHashes(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeVersion(Lcom/android/server/backup/PackageManagerBackupAgent;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredSignatures(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoredIncrementalVersion(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoredSdkVersion(Lcom/android/server/backup/PackageManagerBackupAgent;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smreadSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    return-void
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Lcom/android/server/backup/utils/BackupEligibilityRules;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x8000000

    .line 165
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_c
    if-ltz p1, :cond_22

    .line 168
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 169
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 170
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_22
    return-object p0
.end method

.method public static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    const-string v0, "PMBA"

    const/4 v1, 0x0

    .line 489
    :try_start_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_7} :catch_3c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_42

    const/16 v3, 0x14

    if-gt v2, v3, :cond_2f

    .line 509
    :try_start_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    if-ge v4, v2, :cond_28

    .line 511
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 512
    new-array v7, v6, [B

    .line 513
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 514
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x20

    if-eq v6, v7, :cond_25

    const/4 v5, 0x1

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_28
    if-eqz v5, :cond_2e

    .line 522
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_2e
    return-object v3

    :cond_2f
    const-string p0, "Suspiciously large sig count in restore data; aborting"

    .line 500
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Bad restore state"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3c
    const-string p0, "Read empty signature block"

    .line 492
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    const-string p0, "Unable to read signatures"

    .line 527
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 412
    array-length p1, p2

    invoke-virtual {p0, p2, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    return-void
.end method

.method public static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 480
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 481
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_b

    :cond_1f
    return-void
.end method


# virtual methods
.method public evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    return-void
.end method

.method public final getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 443
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 444
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    const-string v1, "@ancestral_record@"

    .line 448
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 450
    new-array p0, v0, [B

    const/4 v1, 0x0

    .line 451
    invoke-virtual {p1, p0, v1, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 452
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 453
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    goto :goto_2c

    :cond_2b
    const/4 p0, -0x1

    :goto_2c
    return p0
.end method

.method public final getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 2

    .line 622
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PMBA"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 466
    :cond_1e
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer-IA;)V

    return-object p1

    .line 464
    :cond_24
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer-IA;)V

    return-object p1
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez p0, :cond_e

    const-string p0, "PMBA"

    const-string/jumbo p1, "getRestoredMetadata() before metadata read!"

    .line 182
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_e
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object p0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez p0, :cond_e

    const-string p0, "PMBA"

    const-string/jumbo v0, "getRestoredPackages() before metadata read!"

    .line 191
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_e
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public hasMetadata()Z
    .registers 1

    .line 177
    iget-boolean p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return p0
.end method

.method public final init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;I)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 150
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 151
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "Unable to write package backup data file!"

    const-string v3, "@meta@"

    .line 208
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 209
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 215
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const-string v7, "PMBA"

    if-eqz v6, :cond_23

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 216
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 217
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Previous metadata "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mismatch vs "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - rewriting"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    :cond_4d
    const/4 v6, 0x1

    .line 230
    :try_start_4e
    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v8, "@ancestral_record@"

    .line 231
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_1db

    const-wide/16 v8, 0x0

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/high16 v11, 0x8000000

    const/4 v12, 0x0

    if-eqz v10, :cond_9d

    .line 245
    :try_start_65
    iget-object v13, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v15, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-virtual {v13, v14, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_71} :catch_94

    .line 247
    :try_start_71
    iget-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7b} :catch_92

    .line 248
    :try_start_7b
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    .line 249
    iget-object v15, v13, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v15, :cond_89

    const-string v15, "Home app has no signing information"

    .line 251
    invoke-static {v7, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 255
    :cond_89
    invoke-virtual {v15}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v15

    .line 256
    invoke-static {v15}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v12
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_91} :catch_96

    goto :goto_9f

    :catch_92
    move-object v14, v12

    goto :goto_96

    :catch_94
    move-object v13, v12

    move-object v14, v13

    :catch_96
    :goto_96
    const-string v10, "Can\'t access preferred home info"

    .line 259
    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    goto :goto_9f

    :cond_9d
    move-object v13, v12

    move-object v14, v13

    .line 271
    :goto_9f
    :try_start_9f
    const-class v15, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageManagerInternal;
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_1d5

    move-object/from16 p1, v7

    .line 272
    :try_start_a9
    iget-wide v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_c4

    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 273
    invoke-static {v10, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    if-eqz v10, :cond_c2

    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 275
    invoke-static {v6, v13, v15}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v6
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_bf} :catch_1d2

    if-nez v6, :cond_c2

    goto :goto_c4

    :cond_c2
    const/4 v6, 0x0

    goto :goto_c5

    :cond_c4
    :goto_c4
    const/4 v6, 0x1

    :goto_c5
    if-eqz v6, :cond_ef

    const-string v6, "@home@"

    if-eqz v10, :cond_eb

    .line 281
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 282
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    if-eqz v14, :cond_db

    goto :goto_dd

    :cond_db
    const-string v14, ""

    .line 284
    :goto_dd
    invoke-virtual {v5, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 285
    invoke-static {v5, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 286
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_ef

    :cond_eb
    const/4 v7, -0x1

    .line 288
    invoke-virtual {v1, v6, v7}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 301
    :cond_ef
    :goto_ef
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 302
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10c

    .line 304
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v1, v3, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_111

    .line 310
    :cond_10c
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 315
    :goto_111
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_117
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 316
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 317
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_129} :catch_1d2

    if-eqz v13, :cond_12c

    goto :goto_117

    .line 323
    :cond_12c
    :try_start_12c
    iget-object v13, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-virtual {v13, v7, v11, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_134
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_134} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_134} :catch_1d2

    .line 332
    :try_start_134
    iget-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_158

    .line 338
    iget-object v14, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    iget-object v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_14d} :catch_1d2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :try_start_151
    iget-wide v2, v11, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    cmp-long v2, v14, v2

    if-nez v2, :cond_15c

    goto :goto_1ba

    :cond_158
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 344
    :cond_15c
    iget-object v2, v13, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v2, :cond_17c

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not backing up package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since it appears to have no signatures."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_176} :catch_1aa

    move-object/from16 v3, p1

    :try_start_178
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b8

    :cond_17c
    move-object/from16 v3, p1

    .line 360
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 361
    iget v11, v13, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v11, :cond_192

    const/high16 v11, -0x80000000

    .line 362
    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 363
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_197

    .line 365
    :cond_192
    iget v11, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 368
    :goto_197
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 370
    invoke-static {v2}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v2

    .line 369
    invoke-static {v5, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 379
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v7, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_1b8

    :catch_1aa
    move-object/from16 v3, p1

    goto :goto_1c2

    :catch_1ad
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    .line 328
    iget-object v2, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1b8} :catch_1c2

    :goto_1b8
    move-object/from16 p1, v3

    :goto_1ba
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/high16 v11, 0x8000000

    goto/16 :goto_117

    :catch_1c2
    :goto_1c2
    move-object/from16 v0, v16

    goto :goto_1d7

    .line 406
    :cond_1c5
    iget-object v1, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v2, v10

    move-wide v3, v8

    move-object v5, v12

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    return-void

    :catch_1d2
    move-object/from16 v3, p1

    goto :goto_1d6

    :catch_1d5
    move-object v3, v7

    :goto_1d6
    move-object v0, v2

    .line 401
    :goto_1d7
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1db
    move-object v0, v2

    move-object v3, v7

    .line 234
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result p2

    .line 430
    invoke-virtual {p0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "PMBA"

    const-string p1, "Ancestral restore set version is unknown to this Android version; not restoring"

    .line 432
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 436
    :cond_12
    invoke-interface {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    return-void
.end method

.method public final parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 10

    const-string v0, "@meta@"

    const-string v1, "PMBA"

    .line 534
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 535
    iget-object v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    .line 536
    iput v2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    const/4 v3, 0x0

    .line 537
    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 538
    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    .line 539
    iput-wide v4, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 540
    iput-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 546
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 547
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 548
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 552
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v5, "=state="

    .line 555
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 556
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v5, 0x2

    if-le p1, v5, :cond_5c

    .line 558
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported state file version "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", redoing from start"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 562
    :cond_5c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :cond_61
    const-string v2, "Older version of saved state - rewriting"

    .line 569
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_67
    const-string v5, "@home@"

    .line 574
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 576
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 577
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 578
    invoke-static {v4}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 580
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 586
    :cond_89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 587
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 588
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-nez v2, :cond_a2

    .line 590
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_a2
    :goto_a2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/high16 v5, -0x80000000

    if-ne v0, v5, :cond_b3

    .line 603
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    goto :goto_b4

    :cond_b3
    int-to-long v5, v0

    :goto_b4
    if-nez v2, :cond_bb

    .line 609
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_bb
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v7, p0, v5, v6, v3}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :cond_c6
    const-string p0, "No global metadata in state file!"

    .line 593
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_cb} :catch_e1
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_cb} :catch_cc

    return-void

    :catch_cc
    move-exception p0

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read Package Manager state file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_e1
    return-void
.end method

.method public final writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 628
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p6

    invoke-direct {p0, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 629
    new-instance p6, Ljava/io/BufferedOutputStream;

    invoke-direct {p6, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 630
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-direct {p0, p6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_13
    const-string p6, "=state="

    .line 635
    invoke-virtual {p0, p6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 p6, 0x2

    .line 636
    invoke-virtual {p0, p6}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p2, :cond_30

    const-string p6, "@home@"

    .line 640
    invoke-virtual {p0, p6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 643
    invoke-static {p0, p5}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    :cond_30
    const-string p2, "@meta@"

    .line 647
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 648
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 649
    sget-object p2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 653
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 654
    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz p3, :cond_65

    const/high16 p3, -0x80000000

    .line 655
    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 656
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_43

    .line 658
    :cond_65
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_43

    .line 662
    :cond_6b
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_6e} :catch_6f

    goto :goto_76

    :catch_6f
    const-string p0, "PMBA"

    const-string p1, "Unable to write package manager state file!"

    .line 664
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_76
    return-void
.end method
