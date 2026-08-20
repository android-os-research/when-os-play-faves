.class public Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field public static final ATTR_BACKUP_ALLOWED:Ljava/lang/String; = "allow-backup"

.field public static final ATTR_BACKUP_ALLOWED_INITIALIZED:Ljava/lang/String; = "allow-backup-initialized"

.field public static final ATTR_BACKUP_SOURCE_BACKUP_ALLOWED:Ljava/lang/String; = "bk_src_backup-allowed"

.field public static final ATTR_BACKUP_SOURCE_VERSION:Ljava/lang/String; = "bk_src_version"

.field public static final ATTR_LAST_UPDATE_TIME:Ljava/lang/String; = "last_udpate_time"

.field public static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field public static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field public static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final TAG:Ljava/lang/String; = "ShortcutService"

.field public static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field public static final TAG_SIGNATURE:Ljava/lang/String; = "signature"


# instance fields
.field public mBackupAllowed:Z

.field public mBackupAllowedInitialized:Z

.field public mBackupSourceBackupAllowed:Z

.field public mBackupSourceVersionCode:J

.field public mIsShadow:Z

.field public mLastUpdateTime:J

.field public mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public mVersionCode:J


# direct methods
.method public constructor <init>(JJLjava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList<",
            "[B>;Z)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 88
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 89
    iput-wide p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 90
    iput-boolean p6, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 91
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 184
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p2, :cond_20

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t get signatures: package="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_20
    invoke-virtual {p2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 191
    new-instance p2, Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 192
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    .line 194
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 195
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    return-object p2
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .registers 8

    .line 97
    new-instance v7, Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;Z)V

    return-object v7
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;Z)I
    .registers 10

    .line 149
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 150
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-static {v1, p2, v0}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v0

    const-string v1, "ShortcutService"

    if-nez v0, :cond_1a

    const-string p0, "Can\'t restore: Package signature mismatch"

    .line 151
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x66

    return p0

    .line 155
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutService;->isSmartSwitchBackupAllowed()Z

    move-result p1

    if-nez p1, :cond_32

    .line 156
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    if-nez p1, :cond_32

    :cond_2a
    const-string p0, "Can\'t restore: package didn\'t or doesn\'t allow backup"

    .line 159
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x65

    return p0

    :cond_32
    const/4 p1, 0x0

    if-nez p3, :cond_61

    .line 170
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    cmp-long p3, v2, v4

    if-gez p3, :cond_61

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p3, p1

    const/4 p1, 0x1

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p3, p1

    const-string p0, "Can\'t restore: package current version %d < backed up version %d"

    .line 171
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x64

    return p0

    :cond_61
    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 334
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PackageInfo:"

    .line 337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  IsShadow: "

    .line 340
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 342
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_1f

    const-string v0, " (not installed)"

    goto :goto_21

    :cond_1f
    const-string v0, " (installed)"

    :goto_21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Version: "

    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 348
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 350
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-eqz v0, :cond_4b

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Backup Allowed: "

    .line 352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 357
    :cond_4b
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    .line 358
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Backup source version: "

    .line 359
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 361
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Backup source backup allowed: "

    .line 364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 369
    :cond_73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Last package update time: "

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 372
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    .line 374
    :goto_84
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    .line 376
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "SigHash: "

    .line 377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_ab
    return-void
.end method

.method public getBackupSourceVersionCode()J
    .registers 3

    .line 114
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 123
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getVersionCode()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    return-wide v0
.end method

.method public hasSignatures()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isBackupAllowed()Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    return p0
.end method

.method public isBackupSourceBackupAllowed()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    return p0
.end method

.method public isShadow()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return p0
.end method

.method public loadFromXml(Landroid/util/TypedXmlPullParser;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "version"

    const-wide/16 v3, -0x1

    .line 258
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    const-string/jumbo v2, "last_udpate_time"

    .line 261
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    if-nez p2, :cond_23

    const-string/jumbo v10, "shadow"

    .line 266
    invoke-static {v1, v10}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    goto :goto_23

    :cond_21
    const/4 v10, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    move v10, v9

    :goto_24
    const-string v11, "bk_src_version"

    .line 270
    invoke-static {v1, v11, v3, v4}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const-string v13, "allow-backup"

    .line 277
    invoke-static {v1, v13, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v13

    const-string v14, "bk_src_backup-allowed"

    .line 279
    invoke-static {v1, v14, v9}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 282
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 286
    :goto_3f
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v9, :cond_83

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4e

    .line 287
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_83

    :cond_4e
    const/4 v4, 0x2

    if-eq v3, v4, :cond_52

    goto :goto_3f

    .line 291
    :cond_52
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 292
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v2, 0x1

    if-ne v3, v9, :cond_7e

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v9, "signature"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6b

    goto :goto_7e

    :cond_6b
    const-string/jumbo v3, "hash"

    .line 297
    invoke-static {v1, v3}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 301
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 306
    :cond_7e
    :goto_7e
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    :goto_81
    const/4 v9, 0x1

    goto :goto_3f

    :cond_83
    if-eqz p2, :cond_8e

    const-wide/16 v1, -0x1

    .line 311
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 312
    iput-wide v5, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 313
    iput-boolean v13, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    goto :goto_94

    .line 315
    :cond_8e
    iput-wide v5, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 316
    iput-wide v11, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 317
    iput-boolean v14, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 319
    :goto_94
    iput-wide v7, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 320
    iput-boolean v10, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 321
    iput-object v15, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 329
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 330
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    return-void
.end method

.method public refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5

    .line 200
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v0, :cond_29

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to refresh package info for shadow package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", user="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v1

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "ShortcutService"

    if-nez p1, :cond_52

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_52
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p1, :cond_74

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not refreshing signature for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since it appears to have no signing info."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_74
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    .line 221
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    return-void
.end method

.method public saveToXml(Lcom/android/server/pm/ShortcutService;Landroid/util/TypedXmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_b

    .line 226
    iget-boolean p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    if-nez p3, :cond_b

    const-string p3, "Backup happened before mBackupAllowed is initialized."

    .line 227
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    :cond_b
    const/4 p1, 0x0

    const-string/jumbo p3, "package-info"

    .line 230
    invoke-interface {p2, p1, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    const-string/jumbo v2, "version"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 233
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    const-string/jumbo v2, "last_udpate_time"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 234
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    const-string/jumbo v1, "shadow"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 235
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    const-string v1, "allow-backup"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 239
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    const-string v1, "allow-backup-initialized"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 241
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    const-string v2, "bk_src_version"

    invoke-static {p2, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 242
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    const-string v1, "bk_src_backup-allowed"

    invoke-static {p2, v1, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 246
    :goto_47
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    const-string/jumbo v1, "signature"

    .line 247
    invoke-interface {p2, p1, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hash"

    .line 249
    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 250
    invoke-interface {p2, p1, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 252
    :cond_71
    invoke-interface {p2, p1, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public setShadow(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return-void
.end method

.method public updateFromPackageInfo(Landroid/content/pm/PackageInfo;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 136
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 137
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 138
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    :cond_15
    return-void
.end method
