.class public Lcom/samsung/android/knox/analytics/database/EncryptedCursor;
.super Landroid/database/AbstractCursor;
.source "EncryptedCursor.java"


# static fields
.field public static INITIAL_VALUE:I = -0x63


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

.field public final mDatabaseCursor:Landroid/database/Cursor;

.field public final mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

.field public mSyntheticRowId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/database/DatabaseHelper;Lcom/samsung/android/knox/analytics/database/CryptoHandler;Ljava/lang/Integer;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    .line 19
    sget v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    iput v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    const-string v1, "constructor()"

    .line 23
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    .line 25
    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getEventChunk(Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 110
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getBlob(I)[B
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBlob("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCount()I
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public getDouble(I)D
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFloat(I)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getInt(I)I
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getLong(I)J
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShort(I)S
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/4 v0, 0x0

    .line 45
    :try_start_2a
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v2, "bulk"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_49

    .line 48
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBulk([B)Ljava/lang/String;

    move-result-object p1

    :goto_47
    move-object v0, p1

    goto :goto_79

    .line 50
    :cond_49
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->useLegacyKey()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decrypt([BZ)Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catch Ljava/security/InvalidKeyException; {:try_start_2a .. :try_end_59} :catch_6c
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a .. :try_end_59} :catch_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_59} :catch_5a

    goto :goto_47

    :catch_5a
    move-exception p1

    .line 58
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v2, "getString(): UnsupportedEncodingException"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79

    :catch_63
    move-exception p1

    .line 56
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v2, "getString(): GeneralSecurityException"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79

    :catch_6c
    move-exception p1

    .line 53
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v2, "getString(): InvalidKeyException"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    :goto_79
    if-nez v0, :cond_87

    .line 61
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string v1, "getString(): null data."

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->deleteEventsUpToSyntheticId()V

    :cond_87
    return-object v0

    .line 66
    :cond_88
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(I)I
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 91
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): returning string for encrypted data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    return p0

    .line 94
    :cond_2b
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p0

    return p0
.end method

.method public isNull(I)Z
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    return p0
.end method

.method public onMove(II)Z
    .registers 3

    .line 99
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 100
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public final useLegacyKey()Z
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "useLegacyKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    sget v1, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->INITIAL_VALUE:I

    if-ne v0, v1, :cond_16

    .line 72
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseHelper:Lcom/samsung/android/knox/analytics/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/database/DatabaseHelper;->getSyntheticRowId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    .line 75
    :cond_16
    iget v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    .line 76
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "useLegacyKey(): There is no marked event ID"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 80
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mSyntheticRowId:I

    if-le v0, v1, :cond_3b

    .line 81
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/database/EncryptedCursor;->mCryptoHandler:Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->deleteAnalyticsLegacyKey()V

    return v2

    :cond_3b
    const/4 p0, 0x1

    return p0
.end method
