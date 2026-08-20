.class public Lcom/android/server/enterprise/storage/EdmStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
.source "EdmStorageProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    .line 459
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 378
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAdminLUidListAsUser(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getBlob(ILjava/lang/String;Ljava/lang/String;)[B
    .registers 7

    .line 626
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 627
    invoke-static {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->translateToAdminLUID(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 629
    invoke-super {p0, p2, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)[B

    move-result-object p0

    return-object p0
.end method

.method public getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .line 614
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    .line 602
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    const/4 v0, 0x0

    .line 493
    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 485
    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursorByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 418
    invoke-super {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInt(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/storage/SettingNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 468
    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLongListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 82
    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 557
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 476
    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStringListAsUser(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 4

    .line 654
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 5

    const/4 v0, 0x0

    .line 281
    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(IILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    .line 580
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 3

    .line 334
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public putBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 168
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBlob(IILjava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 237
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 399
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 180
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putLong(ILjava/lang/String;Ljava/lang/String;J)Z
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 192
    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putLong(IILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 71
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    const/4 v0, 0x0

    .line 345
    invoke-super {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 3

    .line 366
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 4

    .line 356
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 501
    invoke-super/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 3

    .line 324
    invoke-super {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 2

    .line 569
    invoke-super {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->remove(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeByAdmin(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 524
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 514
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result p0

    return p0
.end method

.method public removeByFieldsAsUser(Ljava/lang/String;Ljava/util/HashMap;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByFieldsAsUser(Ljava/lang/String;ILjava/util/HashMap;I)I

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .registers 4

    .line 595
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 588
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result p0

    return p0
.end method

.method public updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 642
    invoke-super/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->updateBlob(IILjava/lang/String;Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method
