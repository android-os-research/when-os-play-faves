.class public Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModelRecord"
.end annotation


# instance fields
.field public final data:[B

.field public final hintText:Ljava/lang/String;

.field public final keyphraseId:I

.field public final locale:Ljava/lang/String;

.field public final modelUuid:Ljava/lang/String;

.field public final recognitionModes:I

.field public final type:I

.field public final users:Ljava/lang/String;

.field public final vendorUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .registers 4

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "model_uuid"

    .line 397
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    const/4 v0, 0x5

    if-lt p1, v0, :cond_20

    const-string/jumbo p1, "vendor_uuid"

    .line 399
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    goto :goto_23

    :cond_20
    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    :goto_23
    const-string p1, "keyphrase_id"

    .line 403
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    const-string/jumbo p1, "type"

    .line 404
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    const-string p1, "data"

    .line 405
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    const-string/jumbo p1, "recognition_modes"

    .line 406
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    const-string p1, "locale"

    .line 407
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    const-string p1, "hint_text"

    .line 408
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    const-string/jumbo p1, "users"

    .line 409
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    return-void
.end method

.method public static stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_7

    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public final V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z
    .registers 4

    .line 413
    iget v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    iget v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 414
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;",
            ">;)Z"
        }
    .end annotation

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    if-ne p0, v1, :cond_14

    goto :goto_4

    .line 433
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    iget-object v1, v1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 439
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-ne p0, v0, :cond_3f

    move v2, v1

    :cond_3f
    return v2

    :cond_40
    return v1
.end method

.method public writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J
    .registers 6

    .line 448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    const-string v2, "model_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    if-lt p1, v1, :cond_17

    .line 451
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    const-string/jumbo v2, "vendor_uuid"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_17
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "keyphrase_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 456
    iget p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "recognition_modes"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    const-string v2, "hint_text"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    const-string/jumbo p1, "users"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string/jumbo p1, "sound_model"

    .line 461
    invoke-virtual {p2, p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method
