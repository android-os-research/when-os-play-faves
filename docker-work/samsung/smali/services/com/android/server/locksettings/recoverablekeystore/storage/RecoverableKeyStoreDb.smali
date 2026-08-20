.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDb.java"


# static fields
.field public static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field public static final IDLE_TIMEOUT_SECONDS:I = 0x1e

.field public static final LAST_SYNCED_AT_UNSYNCED:I = -0x1

.field public static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDb"


# instance fields
.field public final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field public final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method public static synthetic $r8$lambda$1xccAUVx0Qp_tc0qjY6swGsFebM(Ljava/util/StringJoiner;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 83
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    return-void
.end method

.method public static decodeCertPath([B)Ljava/security/cert/CertPath;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    .line 1362
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_12

    .line 1367
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "PkiPath"

    invoke-virtual {v0, v1, p0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    :catch_12
    move-exception p0

    .line 1365
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decodeX509Key([B)Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1349
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    :try_start_5
    const-string p0, "EC"

    .line 1351
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 1354
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V
    .registers 2

    .line 624
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .registers 4

    .line 75
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 76
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v1, 0x1e

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 78
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 1344
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final ensureRecoveryServiceMetadataEntryExists(II)V
    .registers 5

    .line 1306
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "recovery_service_metadata"

    const/4 p2, 0x0

    const/4 v1, 0x4

    .line 1310
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public final ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .registers 6

    .line 1319
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "root_alias"

    .line 1323
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "root_of_trust"

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 1324
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public final ensureUserMetadataEntryExists(I)V
    .registers 5

    .line 1333
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "user_metadata"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1336
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method public getActiveRootOfTrust(II)Ljava/lang/String;
    .registers 14

    .line 733
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    const-string/jumbo v1, "user_id"

    const-string/jumbo v2, "uid"

    const-string v8, "active_root_of_trust"

    .line 735
    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 743
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v4, v10

    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 746
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 755
    :try_start_32
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_88

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_3d
    if-le v1, v10, :cond_65

    :try_start_3f
    const-string v3, "RecoverableKeyStoreDb"

    .line 760
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, p0

    .line 761
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 760
    invoke-static {v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_3f .. :try_end_61} :catchall_88

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 766
    :cond_65
    :try_start_65
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 767
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 769
    invoke-interface {v0, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_88

    if-eqz p1, :cond_76

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 772
    :cond_76
    :try_start_76
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 773
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_88

    if-eqz p1, :cond_84

    .line 777
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_88
    move-exception p0

    if-eqz v0, :cond_93

    .line 745
    :try_start_8b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8f

    goto :goto_93

    :catchall_8f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_93
    :goto_93
    throw p0
.end method

.method public getAllKeys(III)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "_id"

    const-string/jumbo v2, "nonce"

    const-string/jumbo v3, "wrapped_key"

    const-string v4, "alias"

    const-string/jumbo v5, "recovery_status"

    const-string/jumbo v6, "key_metadata"

    .line 268
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x3

    new-array v4, p0, [Ljava/lang/String;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v4, p1

    .line 282
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v4, p1

    const-string/jumbo v1, "keys"

    const-string/jumbo v3, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 286
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 295
    :try_start_3f
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 296
    :goto_44
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_95

    const-string/jumbo p2, "nonce"

    .line 298
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 297
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    const-string/jumbo p2, "wrapped_key"

    .line 300
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 299
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string p2, "alias"

    .line 302
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 301
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "recovery_status"

    .line 304
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 303
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v0, "key_metadata"

    .line 308
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 309
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_85

    const/4 v0, 0x0

    :goto_83
    move-object v3, v0

    goto :goto_8a

    .line 312
    :cond_85
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_83

    .line 315
    :goto_8a
    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v0, v6

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    invoke-virtual {p1, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_3f .. :try_end_94} :catchall_99

    goto :goto_44

    .line 319
    :cond_95
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_99
    move-exception p1

    if-eqz p0, :cond_a4

    .line 285
    :try_start_9c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0

    goto :goto_a4

    :catchall_a0
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a4
    :goto_a4
    throw p1
.end method

.method public final getBytes(IILjava/lang/String;)[B
    .registers 15

    .line 1002
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x4

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v8, 0x0

    aput-object p0, v2, v8

    const-string/jumbo p0, "user_id"

    const/4 v9, 0x1

    aput-object p0, v2, v9

    const-string/jumbo p0, "uid"

    const/4 v10, 0x2

    aput-object p0, v2, v10

    const/4 p0, 0x3

    aput-object p3, v2, p0

    new-array v4, v10, [Ljava/lang/String;

    .line 1012
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1015
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1024
    :try_start_38
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_83

    const/4 v2, 0x0

    if-nez v1, :cond_43

    .line 1042
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_43
    if-le v1, v9, :cond_6a

    :try_start_45
    const-string p3, "RecoverableKeyStoreDb"

    .line 1029
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array p0, p0, [Ljava/lang/Object;

    .line 1032
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v10

    .line 1030
    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1029
    invoke-static {p3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_83

    .line 1042
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 1035
    :cond_6a
    :try_start_6a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1036
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 1037
    invoke-interface {v0, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_83

    if-eqz p1, :cond_7b

    .line 1042
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 1040
    :cond_7b
    :try_start_7b
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_83

    .line 1042
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_83
    move-exception p0

    if-eqz v0, :cond_8e

    .line 1014
    :try_start_86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p0
.end method

.method public final getBytes(IILjava/lang/String;Ljava/lang/String;)[B
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1082
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string/jumbo v0, "user_id"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string/jumbo v0, "uid"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string/jumbo v0, "root_alias"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const/4 v0, 0x4

    aput-object v1, v5, v0

    new-array v7, v14, [Ljava/lang/String;

    .line 1095
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v12

    aput-object v2, v7, v13

    const-string/jumbo v4, "root_of_trust"

    const-string/jumbo v6, "user_id = ? AND uid = ? AND root_alias = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1098
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1107
    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_96

    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 1125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_56
    if-le v0, v12, :cond_7d

    :try_start_58
    const-string v1, "RecoverableKeyStoreDb"

    .line 1112
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v6, v14, [Ljava/lang/Object;

    .line 1115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    .line 1113
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_58 .. :try_end_79} :catchall_96

    .line 1125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1118
    :cond_7d
    :try_start_7d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1119
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1120
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_96

    if-eqz v1, :cond_8e

    .line 1125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1123
    :cond_8e
    :try_start_8e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_96

    .line 1125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_96
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_a3

    .line 1097
    :try_start_9a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a3

    :catchall_9e
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a3
    :goto_a3
    throw v1
.end method

.method public getCounterId(II)Ljava/lang/Long;
    .registers 4

    const-string v0, "counter_id"

    .line 806
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getKey(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .registers 13

    .line 123
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "_id"

    const-string/jumbo v2, "nonce"

    const-string/jumbo v3, "wrapped_key"

    const-string/jumbo v4, "platform_key_generation_id"

    const-string/jumbo v5, "recovery_status"

    const-string/jumbo v6, "key_metadata"

    .line 124
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v4, v8

    const/4 v9, 0x1

    aput-object p2, v4, v9

    const-string/jumbo v1, "keys"

    const-string/jumbo v3, "uid = ? AND alias = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 137
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 146
    :try_start_35
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_b1

    const/4 v2, 0x0

    if-nez v1, :cond_40

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_40
    if-le v1, v9, :cond_64

    :try_start_42
    const-string v3, "RecoverableKeyStoreDb"

    .line 151
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d WrappedKey entries found for uid=%d alias=\'%s\'. Should only ever be 0 or 1."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    aput-object p2, v6, p0

    .line 152
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_b1

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 157
    :cond_64
    :try_start_64
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo p0, "nonce"

    .line 159
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 158
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string/jumbo p0, "wrapped_key"

    .line 161
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 160
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    const-string/jumbo p0, "platform_key_generation_id"

    .line 163
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 162
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string/jumbo p0, "recovery_status"

    .line 165
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 164
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo p0, "key_metadata"

    .line 169
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 170
    invoke-interface {v0, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_a2

    :goto_a0
    move-object v6, v2

    goto :goto_a7

    .line 173
    :cond_a2
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    goto :goto_a0

    .line 176
    :goto_a7
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V
    :try_end_ad
    .catchall {:try_start_64 .. :try_end_ad} :catchall_b1

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_b1
    move-exception p0

    if-eqz v0, :cond_bc

    .line 136
    :try_start_b4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bc

    :catchall_b8
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bc
    :goto_bc
    throw p0
.end method

.method public final getLong(IILjava/lang/String;)Ljava/lang/Long;
    .registers 15

    .line 922
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x4

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v8, 0x0

    aput-object p0, v2, v8

    const-string/jumbo p0, "user_id"

    const/4 v9, 0x1

    aput-object p0, v2, v9

    const-string/jumbo p0, "uid"

    const/4 v10, 0x2

    aput-object p0, v2, v10

    const/4 p0, 0x3

    aput-object p3, v2, p0

    new-array v4, v10, [Ljava/lang/String;

    .line 932
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 935
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 944
    :try_start_38
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_87

    const/4 v2, 0x0

    if-nez v1, :cond_43

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_43
    if-le v1, v9, :cond_6a

    :try_start_45
    const-string p3, "RecoverableKeyStoreDb"

    .line 949
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array p0, p0, [Ljava/lang/Object;

    .line 952
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v10

    .line 950
    invoke-static {v3, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 949
    invoke-static {p3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_45 .. :try_end_66} :catchall_87

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 955
    :cond_6a
    :try_start_6a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 956
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 957
    invoke-interface {v0, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_87

    if-eqz p1, :cond_7b

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 960
    :cond_7b
    :try_start_7b
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_87

    .line 962
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_87
    move-exception p0

    if-eqz v0, :cond_92

    .line 934
    :try_start_8a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    throw p0
.end method

.method public final getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p4

    .line 1168
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const-string/jumbo v0, "user_id"

    const/4 v12, 0x1

    aput-object v0, v5, v12

    const-string/jumbo v0, "uid"

    const/4 v13, 0x2

    aput-object v0, v5, v13

    const-string/jumbo v0, "root_alias"

    const/4 v14, 0x3

    aput-object v0, v5, v14

    const/4 v0, 0x4

    aput-object v1, v5, v0

    new-array v7, v14, [Ljava/lang/String;

    .line 1181
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v12

    aput-object v2, v7, v13

    const-string/jumbo v4, "root_of_trust"

    const-string/jumbo v6, "user_id = ? AND uid = ? AND root_alias = ?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1184
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1193
    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_9a

    const/4 v3, 0x0

    if-nez v0, :cond_56

    .line 1211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_56
    if-le v0, v12, :cond_7d

    :try_start_58
    const-string v1, "RecoverableKeyStoreDb"

    .line 1198
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v6, v14, [Ljava/lang/Object;

    .line 1201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    .line 1199
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_58 .. :try_end_79} :catchall_9a

    .line 1211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1204
    :cond_7d
    :try_start_7d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1205
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1206
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_9a

    if-eqz v1, :cond_8e

    .line 1211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 1209
    :cond_8e
    :try_start_8e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_9a

    .line 1211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_9a
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_a7

    .line 1183
    :try_start_9e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_a7

    :catchall_a2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    throw v1
.end method

.method public getPlatformKeyGenerationId(I)I
    .registers 10

    .line 425
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "platform_key_generation_id"

    .line 426
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string/jumbo v1, "user_metadata"

    const-string/jumbo v3, "user_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 434
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 443
    :try_start_24
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3e

    if-nez v0, :cond_2f

    const/4 p0, -0x1

    .line 450
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    .line 446
    :cond_2f
    :try_start_2f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 447
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3e

    .line 450
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catchall_3e
    move-exception p0

    if-eqz p1, :cond_49

    .line 433
    :try_start_41
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw p0
.end method

.method public getRecoveryAgents(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "uid"

    .line 556
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 558
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 561
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 570
    :try_start_24
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    :goto_2d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 574
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_47

    goto :goto_2d

    .line 578
    :cond_43
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_47
    move-exception p0

    if-eqz p1, :cond_52

    .line 560
    :try_start_4a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw p0
.end method

.method public getRecoverySecretTypes(II)[I
    .registers 14

    .line 645
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    const-string/jumbo v1, "user_id"

    const-string/jumbo v2, "uid"

    const-string/jumbo v8, "secret_types"

    .line 647
    filled-new-array {p0, v1, v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 655
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aput-object v1, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v4, v10

    const-string/jumbo v1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ? AND uid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 658
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 667
    :try_start_33
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3f

    new-array p0, v9, [I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_bd

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_3f
    const-string v2, "RecoverableKeyStoreDb"

    if-le v1, v10, :cond_69

    .line 672
    :try_start_43
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 675
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, p0

    .line 673
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v9, [I
    :try_end_65
    .catchall {:try_start_43 .. :try_end_65} :catchall_bd

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 678
    :cond_69
    :try_start_69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 681
    invoke-interface {v0, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_7c

    new-array p0, v9, [I
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_bd

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    .line 684
    :cond_7c
    :try_start_7c
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 685
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    new-array p0, v9, [I
    :try_end_88
    .catchall {:try_start_7c .. :try_end_88} :catchall_bd

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_8c
    :try_start_8c
    const-string p1, ","

    .line 688
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 689
    array-length p1, p0

    new-array p1, p1, [I

    .line 690
    :goto_95
    array-length p2, p0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_bd

    if-ge v9, p2, :cond_b9

    .line 692
    :try_start_98
    aget-object p2, p0, v9

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    aput p2, p1, v9
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_a0} :catch_a1
    .catchall {:try_start_98 .. :try_end_a0} :catchall_bd

    goto :goto_b6

    :catch_a1
    move-exception p2

    .line 694
    :try_start_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String format error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_a2 .. :try_end_b6} :catchall_bd

    :goto_b6
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    .line 698
    :cond_b9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_bd
    move-exception p0

    if-eqz v0, :cond_c8

    .line 657
    :try_start_c0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c8

    :catchall_c4
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c8
    :goto_c8
    throw p0
.end method

.method public getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;
    .registers 7

    const-string v0, "cert_path"

    .line 512
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_a

    return-object p3

    .line 517
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 519
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Recovery service CertPath entry cannot be decoded for userId=%d uid=%d."

    .line 520
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecoverableKeyStoreDb"

    .line 519
    invoke-static {p2, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3
.end method

.method public getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;
    .registers 5

    const-string v0, "cert_serial"

    .line 480
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryServicePublicKey(II)Ljava/security/PublicKey;
    .registers 6

    const-string/jumbo v0, "public_key"

    .line 592
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_b

    return-object v0

    .line 597
    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeX509Key([B)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    .line 599
    :catch_10
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Recovery service public key entry cannot be decoded for userId=%d uid=%d."

    .line 600
    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverableKeyStoreDb"

    .line 599
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getServerParams(II)[B
    .registers 4

    const-string/jumbo v0, "server_params"

    .line 837
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getShouldCreateSnapshot(II)Z
    .registers 5

    const-string/jumbo v0, "should_create_snapshot"

    .line 905
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 907
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public getSnapshotVersion(II)Ljava/lang/Long;
    .registers 4

    const-string/jumbo v0, "snapshot_version"

    .line 866
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getStatusForAllKeys(I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    const-string v8, "alias"

    const-string/jumbo v9, "recovery_status"

    .line 204
    filled-new-array {p0, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const-string/jumbo v1, "keys"

    const-string/jumbo v3, "uid = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 213
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 222
    :try_start_28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 223
    :goto_2d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 225
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 226
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_4f

    goto :goto_2d

    .line 231
    :cond_4b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_4f
    move-exception p1

    if-eqz p0, :cond_5a

    .line 212
    :try_start_52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    throw p1
.end method

.method public getUserSerialNumbers()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "user_id"

    const-string/jumbo v8, "user_serial_number"

    .line 349
    filled-new-array {p0, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v1, "user_metadata"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 356
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 365
    :try_start_1e
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 366
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 368
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 367
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 369
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_49

    goto :goto_23

    .line 374
    :cond_45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_49
    move-exception p0

    if-eqz v0, :cond_54

    .line 355
    :try_start_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p0
.end method

.method public insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .registers 7

    .line 98
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "alias"

    .line 102
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object p1

    const-string/jumbo p2, "nonce"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object p1

    const-string/jumbo p2, "wrapped_key"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p1, -0x1

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "last_synced_at"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "platform_key_generation_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getRecoveryStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "recovery_status"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object p1

    const-string/jumbo p2, "key_metadata"

    if-nez p1, :cond_6c

    .line 110
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6f

    .line 112
    :cond_6c
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_6f
    const/4 p1, 0x0

    const-string/jumbo p2, "keys"

    .line 114
    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public invalidateKeysForUser(I)V
    .registers 5

    .line 399
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 402
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "recovery_status"

    .line 401
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 404
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "keys"

    const-string/jumbo v2, "user_id = ?"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public invalidateKeysForUserIdOnCustomScreenLock(I)V
    .registers 5

    .line 411
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 412
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "recovery_status"

    .line 413
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 418
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "keys"

    const-string/jumbo v2, "user_id = ?"

    .line 417
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeKey(ILjava/lang/String;)Z
    .registers 6

    .line 186
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string/jumbo p2, "keys"

    const-string/jumbo v2, "uid = ? AND alias = ?"

    .line 190
    invoke-virtual {p0, p2, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_20

    move v1, p1

    :cond_20
    return v1
.end method

.method public removeUserFromAllTables(I)V
    .registers 2

    .line 1247
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromKeysTable(I)Z

    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromUserMetadataTable(I)Z

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRecoveryServiceMetadataTable(I)Z

    .line 1250
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeUserFromRootOfTrustTable(I)Z

    return-void
.end method

.method public final removeUserFromKeysTable(I)Z
    .registers 6

    .line 1259
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1261
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "keys"

    const-string/jumbo v3, "user_id = ?"

    .line 1262
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public final removeUserFromRecoveryServiceMetadataTable(I)Z
    .registers 6

    .line 1283
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1285
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "recovery_service_metadata"

    const-string/jumbo v3, "user_id = ?"

    .line 1286
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public final removeUserFromRootOfTrustTable(I)Z
    .registers 6

    .line 1295
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1297
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "root_of_trust"

    const-string/jumbo v3, "user_id = ?"

    .line 1298
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public final removeUserFromUserMetadataTable(I)Z
    .registers 6

    .line 1271
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1273
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "user_metadata"

    const-string/jumbo v3, "user_id = ?"

    .line 1274
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public setActiveRootOfTrust(IILjava/lang/String;)J
    .registers 7

    .line 712
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 713
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "active_root_of_trust"

    .line 714
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 720
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p0, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string/jumbo p1, "recovery_service_metadata"

    const-string/jumbo p2, "user_id = ? AND uid = ?"

    .line 719
    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setBytes(IILjava/lang/String;Ljava/lang/String;[B)J
    .registers 9

    .line 1141
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1142
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1143
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    .line 1149
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x0

    aput-object p5, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x1

    aput-object p5, p4, v2

    const/4 p5, 0x2

    aput-object p3, p4, p5

    .line 1151
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    const-string/jumbo p0, "root_of_trust"

    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1152
    invoke-virtual {v0, p0, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setBytes(IILjava/lang/String;[B)J
    .registers 8

    .line 1057
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1058
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 1063
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, p3, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x1

    aput-object p4, p3, v2

    .line 1065
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    const-string/jumbo p0, "recovery_service_metadata"

    const-string/jumbo p1, "user_id = ? AND uid = ?"

    .line 1066
    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setCounterId(IIJ)J
    .registers 11

    const-string v3, "counter_id"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    .line 791
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final setLong(IILjava/lang/String;J)J
    .registers 8

    .line 978
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 980
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 984
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    .line 986
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    const-string/jumbo p0, "recovery_service_metadata"

    const-string/jumbo p1, "user_id = ? AND uid = ?"

    .line 987
    invoke-virtual {v0, p0, v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final setLong(IILjava/lang/String;Ljava/lang/String;J)J
    .registers 9

    .line 1228
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1229
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1230
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1231
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    .line 1236
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    aput-object p5, p4, p6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, p4, p6

    const/4 p5, 0x2

    aput-object p3, p4, p5

    .line 1238
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    const-string/jumbo p0, "root_of_trust"

    const-string/jumbo p1, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1239
    invoke-virtual {v0, p0, v1, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setPlatformKeyGenerationId(II)J
    .registers 7

    .line 328
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v2, "platform_key_generation_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 333
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUser(I)V

    const-string/jumbo p0, "user_metadata"

    const-string/jumbo p1, "user_id = ?"

    .line 337
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setRecoverySecretTypes(II[I)J
    .registers 8

    .line 621
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 622
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 623
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 624
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p3

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {p3, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 625
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "secret_types"

    .line 626
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, p0, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string/jumbo p1, "recovery_service_metadata"

    const-string/jumbo p2, "user_id = ? AND uid = ?"

    .line 631
    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 540
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "PkiPath"

    .line 544
    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    const-string v5, "cert_path"

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 543
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide p0

    return-wide p0

    .line 541
    :cond_1b
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string p1, "No certificate contained in the cert path."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRecoveryServiceCertSerial(IILjava/lang/String;J)J
    .registers 13

    const-string v4, "cert_serial"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 496
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setRecoveryServicePublicKey(IILjava/security/PublicKey;)J
    .registers 5

    .line 465
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    const-string/jumbo v0, "public_key"

    .line 464
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public setRecoveryStatus(ILjava/lang/String;I)I
    .registers 6

    .line 243
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 244
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v1, "recovery_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    .line 250
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string/jumbo p1, "keys"

    const-string/jumbo p2, "uid = ? AND alias = ?"

    .line 249
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setServerParams(II[B)J
    .registers 5

    const-string/jumbo v0, "server_params"

    .line 821
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public setShouldCreateSnapshot(IIZ)J
    .registers 12

    if-eqz p3, :cond_5

    const-wide/16 v0, 0x1

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    move-wide v6, v0

    const-string/jumbo v5, "should_create_snapshot"

    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 890
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setSnapshotVersion(IIJ)J
    .registers 11

    const-string/jumbo v3, "snapshot_version"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    .line 851
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setUserSerialNumber(IJ)J
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "user_serial_number"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 388
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, p2, v2

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureUserMetadataEntryExists(I)V

    const-string/jumbo p0, "user_metadata"

    const-string/jumbo p1, "user_id = ?"

    .line 391
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
