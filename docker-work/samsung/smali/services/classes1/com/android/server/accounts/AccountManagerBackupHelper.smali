.class public final Lcom/android/server/accounts/AccountManagerBackupHelper;
.super Ljava/lang/Object;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;,
        Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
    }
.end annotation


# static fields
.field public static final ATTR_ACCOUNT_SHA_256:Ljava/lang/String; = "account-sha-256"

.field public static final ATTR_DIGEST:Ljava/lang/String; = "digest"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final PENDING_RESTORE_TIMEOUT_MILLIS:J = 0x36ee80L

.field public static final TAG:Ljava/lang/String; = "AccountManagerBackupHelper"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

.field public final mLock:Ljava/lang/Object;

.field public mRestoreCancelCommand:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mRestorePendingAppPermissions:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAccountManagerInternal(Lcom/android/server/accounts/AccountManagerBackupHelper;)Landroid/accounts/AccountManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccountManagerService(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRestoreCancelCommand(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePackageMonitor(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestorePendingAppPermissions(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    return-void
.end method


# virtual methods
.method public backupAccountAccessPermissions(I)[B
    .registers 16

    .line 151
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 152
    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 153
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_9
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d7

    .line 155
    :try_start_c
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 156
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findAllAccountGrants()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    .line 158
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_d4

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_d7

    return-object v4

    .line 161
    :cond_1c
    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v5

    .line 163
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 164
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "permissions"

    .line 165
    invoke-interface {v5, v4, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 170
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 171
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 173
    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_64

    goto :goto_45

    .line 178
    :cond_64
    array-length v8, v6

    const/4 v9, 0x0

    :goto_66
    if-ge v9, v8, :cond_45

    aget-object v10, v6, v9
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_6a} :catch_c9
    .catchall {:try_start_1c .. :try_end_6a} :catchall_d4

    const/16 v11, 0x40

    .line 181
    :try_start_6c
    invoke-virtual {p0, v10, v11, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_70} :catch_9d
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_c9
    .catchall {:try_start_6c .. :try_end_70} :catchall_d4

    .line 188
    :try_start_70
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v11}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b3

    const-string/jumbo v12, "permission"

    .line 191
    invoke-interface {v5, v4, v12}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "account-sha-256"

    .line 193
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v13

    .line 192
    invoke-interface {v5, v4, v12, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "package"

    .line 194
    invoke-interface {v5, v4, v12, v10}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "digest"

    .line 195
    invoke-interface {v5, v4, v10, v11}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "permission"

    .line 196
    invoke-interface {v5, v4, v10}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b3

    :catch_9d
    const-string v11, "AccountManagerBackupHelper"

    .line 184
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping backup of account access grant for non-existing package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    :cond_b6
    const-string/jumbo p0, "permissions"

    .line 200
    invoke-interface {v5, v4, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 202
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 203
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_c6} :catch_c9
    .catchall {:try_start_70 .. :try_end_c6} :catchall_d4

    :try_start_c6
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_d4

    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_d7

    return-object p0

    :catch_c9
    move-exception p0

    :try_start_ca
    const-string p1, "AccountManagerBackupHelper"

    const-string v0, "Error backing up account access grants"

    .line 205
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_d4

    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d7

    return-object v4

    :catchall_d4
    move-exception p0

    .line 208
    :try_start_d5
    monitor-exit v2
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw p0

    :catchall_d7
    move-exception p0

    .line 209
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_d7

    throw p0
.end method

.method public restoreAccountAccessPermissions([BI)V
    .registers 14

    .line 214
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 216
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 219
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 220
    :cond_1e
    :goto_1e
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b8

    const-string/jumbo v2, "permissions"

    .line 221
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_1e

    .line 224
    :cond_33
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 225
    :cond_37
    :goto_37
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "permission"

    .line 226
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_37

    :cond_4b
    const-string v4, "account-sha-256"

    .line 229
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 231
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_5a
    const-string/jumbo v4, "package"

    .line 233
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 235
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_6a
    const-string v4, "digest"

    .line 237
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 239
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 242
    :cond_79
    new-instance v4, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    move-object v5, v4

    move-object v6, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    invoke-virtual {v4, v0}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 246
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_8a} :catch_ca
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8a} :catch_ca

    .line 248
    :try_start_8a
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    if-nez v6, :cond_a3

    .line 249
    new-instance v6, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    invoke-direct {v6, p0, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor-IA;)V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePackageMonitor:Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;

    .line 250
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object v8, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v7, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 251
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    const/4 v9, 0x1

    .line 250
    invoke-virtual {v6, v8, v7, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 253
    :cond_a3
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    if-nez v6, :cond_ae

    .line 254
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    .line 256
    :cond_ae
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestorePendingAppPermissions:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v5

    goto :goto_37

    :catchall_b5
    move-exception p0

    monitor-exit v5
    :try_end_b7
    .catchall {:try_start_8a .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw p0

    .line 263
    :cond_b8
    new-instance p1, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;

    invoke-direct {p1, p0, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$CancelRestoreCommand-IA;)V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mRestoreCancelCommand:Ljava/lang/Runnable;

    .line 264
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_c9} :catch_ca
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c9} :catch_ca

    goto :goto_d2

    :catch_ca
    move-exception p0

    const-string p1, "AccountManagerBackupHelper"

    const-string p2, "Error restoring app permissions"

    .line 267
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d2
    return-void
.end method
