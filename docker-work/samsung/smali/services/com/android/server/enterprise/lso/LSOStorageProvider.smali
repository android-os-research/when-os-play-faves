.class public Lcom/android/server/enterprise/lso/LSOStorageProvider;
.super Lcom/android/server/enterprise/storage/EdmStorageProvider;
.source "LSOStorageProvider.java"


# static fields
.field public static final INVALID_ROW_ID:I = -0x1

.field public static final LSO_FEATURE_OVERLAY:Ljava/lang/String; = "LOCKSCREEN_OVERLAY"

.field public static final LSO_FEATURE_WALLPAPER:Ljava/lang/String; = "LOCKSCREEN_WALLPAPER"

.field public static final LSO_ITEM_ATTRIBUTES:I = 0xf

.field public static final LSO_ITEM_BG_COLOR:I = 0x6

.field public static final LSO_ITEM_GRAVITY:I = 0x7

.field public static final LSO_ITEM_HEIGHT:I = 0x4

.field public static final LSO_ITEM_ID:I = 0x2

.field public static final LSO_ITEM_IMG_PATH:I = 0x9

.field public static final LSO_ITEM_IMG_URL:I = 0xc

.field public static final LSO_ITEM_LAYER:I = 0x10

.field public static final LSO_ITEM_ORIENTATION:I = 0xd

.field public static final LSO_ITEM_PACKAGE_NAME:I = 0xe

.field public static final LSO_ITEM_PARENT_ID:I = 0x11

.field public static final LSO_ITEM_POLLING_INTERVAL:I = 0x8

.field public static final LSO_ITEM_ROWID:I = 0x0

.field public static final LSO_ITEM_SCALE_TYPE:I = 0xa

.field public static final LSO_ITEM_TEXT:I = 0x9

.field public static final LSO_ITEM_TXT_COLOR:I = 0x8

.field public static final LSO_ITEM_TXT_SIZE:I = 0xb

.field public static final LSO_ITEM_TXT_STYLE:I = 0xa

.field public static final LSO_ITEM_TYPE:I = 0x1

.field public static final LSO_ITEM_WEIGHT:I = 0x5

.field public static final LSO_ITEM_WIDTH:I = 0x3

.field public static final TAG:Ljava/lang/String; = "LSOStorageProvider"

.field public static final tblColumns:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    const-string v0, "Item_RowId"

    const-string v1, "Item_Type"

    const-string v2, "Item_Id"

    const-string v3, "Item_Width"

    const-string v4, "Item_Height"

    const-string v5, "Item_Weight"

    const-string v6, "Item_Bg_Color"

    const-string v7, "Item_Gravity"

    const-string v8, "Item_TxtColor_or_PollingInterval"

    const-string v9, "Item_Txt_or_ImgPath"

    const-string v10, "Item_TxtStyle_or_ScaleType"

    const-string v11, "Item_TxtSize"

    const-string v12, "Item_Url"

    const-string v13, "Item_Orientation"

    const-string v14, "Item_PackageName"

    const-string v15, "Item_Attributes"

    const-string v16, "Item_Layer"

    const-string v17, "Item_ParentId"

    .line 63
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;
    .registers 22

    .line 577
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v1

    .line 581
    sget-object v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v4, v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x11

    .line 582
    aget-object v4, v2, v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    .line 583
    aget-object v2, v2, v4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getUpdatedFields()[I

    move-result-object v2

    if-eqz v2, :cond_1cd

    .line 586
    array-length v5, v2

    if-nez v5, :cond_36

    goto/16 :goto_1cd

    :cond_36
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 590
    :goto_39
    array-length v8, v2

    if-ge v6, v8, :cond_1ca

    if-nez v7, :cond_1ca

    .line 591
    aget v8, v2, v6

    const/4 v9, 0x2

    if-eq v8, v4, :cond_1b8

    const/4 v10, 0x3

    if-eq v8, v9, :cond_1a8

    const/4 v11, 0x4

    if-eq v8, v11, :cond_198

    const/4 v12, 0x5

    const/16 v13, 0x8

    if-eq v8, v13, :cond_188

    if-eq v8, v3, :cond_177

    const/16 v14, 0x20

    if-eq v8, v14, :cond_166

    const/16 v14, 0x40

    if-eq v8, v14, :cond_154

    const/16 v14, 0xa

    const/16 v15, 0x200

    const/16 v16, 0x9

    const/16 v3, 0x100

    const/16 v4, 0x80

    if-eq v1, v9, :cond_103

    if-eq v1, v10, :cond_bd

    if-eq v1, v11, :cond_8c

    if-eq v1, v12, :cond_75

    const-string v3, "LSOStorageProvider"

    const-string/jumbo v4, "unknown LSOItem"

    .line 684
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_1c3

    .line 674
    :cond_75
    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    if-eq v8, v4, :cond_7d

    goto/16 :goto_1c3

    .line 677
    :cond_7d
    sget-object v4, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v8, 0xe

    aget-object v4, v4, v8

    invoke-virtual {v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->getWidget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c3

    .line 660
    :cond_8c
    move-object/from16 v9, p1

    check-cast v9, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    if-eq v8, v4, :cond_a3

    if-eq v8, v3, :cond_96

    goto/16 :goto_1c3

    .line 663
    :cond_96
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v16

    .line 664
    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c3

    .line 667
    :cond_a3
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    .line 668
    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v4, v8, :cond_b3

    move v4, v5

    goto :goto_b4

    :cond_b3
    const/4 v4, 0x1

    .line 667
    :goto_b4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1c3

    .line 642
    :cond_bd
    move-object/from16 v9, p1

    check-cast v9, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    if-eq v8, v4, :cond_f6

    if-eq v8, v3, :cond_da

    if-eq v8, v15, :cond_c9

    goto/16 :goto_1c3

    .line 648
    :cond_c9
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v14

    .line 649
    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleTypeAsInteger()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 648
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1c3

    .line 652
    :cond_da
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v4, v3, v4

    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    aget-object v3, v3, v13

    .line 654
    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getPollingInterval()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 653
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1c3

    .line 645
    :cond_f6
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c3

    .line 623
    :cond_103
    move-object/from16 v9, p1

    check-cast v9, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    if-eq v8, v4, :cond_148

    if-eq v8, v3, :cond_137

    if-eq v8, v15, :cond_124

    const/16 v3, 0x400

    if-eq v8, v3, :cond_113

    goto/16 :goto_1c3

    .line 632
    :cond_113
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextStyle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1c3

    .line 635
    :cond_124
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    .line 636
    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextSizeAsFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 635
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_1c3

    .line 629
    :cond_137
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getTextColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1c3

    .line 626
    :cond_148
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v16

    invoke-virtual {v9}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c3

    .line 617
    :cond_154
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1c3

    .line 613
    :cond_166
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c3

    .line 609
    :cond_177
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c3

    .line 605
    :cond_188
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1c3

    .line 601
    :cond_198
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c3

    .line 597
    :cond_1a8
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1c3

    .line 593
    :cond_1b8
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c3
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x1

    goto/16 :goto_39

    :cond_1ca
    if-eqz v7, :cond_1cd

    const/4 v0, 0x0

    :cond_1cd
    :goto_1cd
    return-object v0
.end method

.method public final deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7

    .line 511
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "Delete from "

    const-string v1, "LSOStorageProvider"

    if-eqz p2, :cond_24

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " where "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 515
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_36
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getAdminPref()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .registers 5

    const-string v0, "accountObject"

    .line 149
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_OVERLAY"

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ADMIN_REF"

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1d

    return-object v3

    .line 161
    :cond_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 163
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2e

    .line 167
    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v3

    :cond_2e
    return-object v3
.end method

.method public final getAdminUid(Ljava/lang/String;)I
    .registers 4

    const-string v0, "ADMIN_REF"

    const-string/jumbo v1, "policyName"

    .line 142
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Configured admin UID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LSOStorageProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCount(Ljava/lang/String;)I
    .registers 4

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_20

    return v0

    .line 124
    :cond_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 125
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 127
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCount("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOverlay(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .registers 6

    const-string v0, "LSOStorageProvider"

    .line 301
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Item_ParentId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Item_Layer"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    :try_start_1b
    const-string v2, "LOCKSCREEN_OVERLAY"

    .line 309
    sget-object v3, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_23
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_23} :catch_77
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_6a
    .catchall {:try_start_1b .. :try_end_23} :catchall_68

    const-string v2, "No record found in LOCKSCREEN_OVERLAY"

    if-nez v1, :cond_30

    .line 312
    :try_start_27
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_2a} :catch_64
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_61
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5e

    if-eqz v1, :cond_2f

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-object p1

    .line 315
    :cond_30
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    .line 316
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_30 .. :try_end_39} :catch_64
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_61
    .catchall {:try_start_30 .. :try_end_39} :catchall_5e

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 320
    :cond_3d
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x1

    .line 322
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    .line 323
    invoke-static {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2
    :try_end_4a
    .catch Landroid/database/SQLException; {:try_start_3d .. :try_end_4a} :catch_64
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_61
    .catchall {:try_start_3d .. :try_end_4a} :catchall_5e

    if-nez v2, :cond_55

    :try_start_4c
    const-string p0, "Invalid Item type"

    .line 326
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/database/SQLException; {:try_start_4c .. :try_end_51} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_62
    .catchall {:try_start_4c .. :try_end_51} :catchall_5e

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 330
    :cond_55
    :try_start_55
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    :try_end_58
    .catch Landroid/database/SQLException; {:try_start_55 .. :try_end_58} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_62
    .catchall {:try_start_55 .. :try_end_58} :catchall_5e

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_94

    :catch_5c
    move-exception p0

    goto :goto_66

    :catchall_5e
    move-exception p0

    move-object p1, v1

    goto :goto_95

    :catch_61
    move-object v2, p1

    :catch_62
    move-object p1, v1

    goto :goto_6b

    :catch_64
    move-exception p0

    move-object v2, p1

    :goto_66
    move-object p1, v1

    goto :goto_79

    :catchall_68
    move-exception p0

    goto :goto_95

    :catch_6a
    move-object v2, p1

    :goto_6b
    :try_start_6b
    const-string/jumbo p0, "getOverlay() falied "

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_68

    if-eqz p1, :cond_94

    .line 337
    :goto_73
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_94

    :catch_77
    move-exception p0

    move-object v2, p1

    .line 332
    :goto_79
    :try_start_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred accessing Enterprise db "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_68

    if-eqz p1, :cond_94

    goto :goto_73

    :cond_94
    :goto_94
    return-object v2

    :goto_95
    if-eqz p1, :cond_9a

    .line 337
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_9a
    throw p0
.end method

.method public getOverlayAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getWallpaperAdminUid()I
    .registers 2

    const-string v0, "LOCKSCREEN_WALLPAPER"

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminUid(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 9

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_51

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Failed to insert record - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_51
    return-wide v2
.end method

.method public isEmpty()Z
    .registers 2

    const-string v0, "LOCKSCREEN_OVERLAY"

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getCount(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V
    .registers 7

    const/16 v0, 0x9

    .line 437
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    .line 438
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v0, :cond_17

    .line 440
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    .line 441
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    :cond_17
    if-eqz v1, :cond_1e

    .line 443
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    .line 445
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadContainerData -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 446
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 447
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 448
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Item_ParentId"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    sget-object p2, Lcom/android/server/enterprise/lso/LSOStorageProvider;->tblColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "LOCKSCREEN_OVERLAY"

    invoke-virtual {p0, v3, p2, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_57

    return-void

    .line 455
    :cond_57
    :try_start_57
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_5b
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_5b} :catch_81
    .catchall {:try_start_57 .. :try_end_5b} :catchall_7f

    if-nez v0, :cond_61

    .line 474
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 460
    :cond_61
    :goto_61
    :try_start_61
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x1

    .line 461
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v0, v0

    .line 463
    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemCreator;->createItem(B)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-nez v0, :cond_74

    goto :goto_61

    .line 467
    :cond_74
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V

    .line 468
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z
    :try_end_7a
    .catch Landroid/database/SQLException; {:try_start_61 .. :try_end_7a} :catch_81
    .catchall {:try_start_61 .. :try_end_7a} :catchall_7f

    goto :goto_61

    .line 474
    :cond_7b
    :goto_7b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_9b

    :catchall_7f
    move-exception p0

    goto :goto_9c

    :catch_81
    move-exception p0

    .line 471
    :try_start_82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurred accessing Enterprise db "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_7f

    goto :goto_7b

    :goto_9b
    return-void

    .line 474
    :goto_9c
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 475
    throw p0
.end method

.method public final loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V
    .registers 5

    const/16 p0, 0x9

    .line 418
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 420
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    .line 421
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    const/16 p0, 0xa

    .line 423
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1d

    .line 425
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(I)V

    :cond_1d
    const/16 p0, 0x8

    .line 427
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/16 v0, 0xc

    .line 428
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 429
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_35

    int-to-long v0, p0

    .line 430
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setURL(Ljava/lang/String;J)V

    .line 433
    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadImageData -- "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadItemData(Lcom/samsung/android/knox/lockscreen/LSOItemData;Landroid/database/Cursor;)V
    .registers 10

    const/4 v0, 0x2

    .line 343
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 345
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    :cond_a
    const/4 v1, 0x3

    .line 347
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0x63

    if-eq v2, v3, :cond_16

    .line 349
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWidth(I)V

    :cond_16
    const/4 v2, 0x4

    .line 351
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v3, :cond_20

    .line 353
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setHeight(I)V

    :cond_20
    const/4 v3, 0x5

    .line 355
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_2d

    .line 357
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    :cond_2d
    const/4 v4, 0x6

    .line 359
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_38

    .line 361
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    .line 363
    :cond_38
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5a

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadItemData -- "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    const/4 v4, 0x7

    .line 368
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v4, v5, :cond_64

    .line 370
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    :cond_64
    const/16 v4, 0xf

    .line 372
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_73

    .line 374
    invoke-static {v4}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->fromByteArray([B)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttrs(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)V

    .line 377
    :cond_73
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v4

    if-eq v4, v0, :cond_92

    if-eq v4, v1, :cond_8c

    if-eq v4, v2, :cond_86

    if-eq v4, v3, :cond_80

    goto :goto_97

    .line 391
    :cond_80
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V

    goto :goto_97

    .line 387
    :cond_86
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadContainerData(Lcom/samsung/android/knox/lockscreen/LSOItemContainer;Landroid/database/Cursor;)V

    goto :goto_97

    .line 383
    :cond_8c
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadImageData(Lcom/samsung/android/knox/lockscreen/LSOItemImage;Landroid/database/Cursor;)V

    goto :goto_97

    .line 379
    :cond_92
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V

    :goto_97
    return-void
.end method

.method public final loadTextData(Lcom/samsung/android/knox/lockscreen/LSOItemText;Landroid/database/Cursor;)V
    .registers 4

    const/16 p0, 0x9

    .line 398
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    .line 400
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setText(Ljava/lang/String;)V

    :cond_11
    const/16 p0, 0x8

    .line 402
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1d

    .line 404
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextColor(I)V

    :cond_1d
    const/16 p0, 0xa

    .line 406
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eq p0, v0, :cond_28

    .line 408
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    :cond_28
    const/16 p0, 0xb

    .line 410
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_36

    .line 412
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(F)V

    .line 414
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadTextData -- "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadWidgetData(Lcom/samsung/android/knox/lockscreen/LSOItemWidget;Landroid/database/Cursor;)V
    .registers 3

    const/16 p0, 0xe

    .line 481
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_11

    .line 483
    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    .line 486
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadWidgetData -- "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetOverlayData(I)V
    .registers 5

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-string v0, "LOCKSCREEN_OVERLAY"

    .line 226
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    .line 232
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    .line 236
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetWallpaperData()V
    .registers 4

    const-string v0, "LOCKSCREEN_WALLPAPER"

    .line 240
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    .line 243
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->deleteRecord(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    const-string p0, "LSOStorageProvider"

    const-string/jumbo v0, "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOverlayData(JLcom/samsung/android/knox/lockscreen/LSOItemData;ILcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p3, :cond_56

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_56

    .line 254
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    .line 255
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->wipeLayerData(I)V

    const-wide/16 v3, 0x0

    .line 257
    invoke-virtual {p0, p3, p4, v3, v4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_1c

    .line 259
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    goto :goto_55

    :cond_1c
    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_55

    .line 262
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_OVERLAY"

    .line 263
    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_42

    .line 266
    invoke-virtual {p5}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object p1

    const-string p2, "accountObject"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_42
    const-string p1, "ADMIN_REF"

    .line 269
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_4f

    const/4 p1, 0x1

    move p3, p1

    goto :goto_50

    :cond_4f
    move p3, p4

    :goto_50
    if-nez p3, :cond_55

    .line 271
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    :cond_55
    :goto_55
    return p3

    .line 251
    :cond_56
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 545
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->constructContentValues(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Landroid/content/ContentValues;

    move-result-object p3

    const-string p4, "LSOStorageProvider"

    if-nez p3, :cond_12

    const-string p0, "Cannot construct content values"

    .line 547
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_12
    const-string v1, "LOCKSCREEN_OVERLAY"

    .line 551
    invoke-virtual {p0, v1, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p3, v1, v3

    if-nez p3, :cond_1f

    return v0

    .line 556
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result p3

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq p3, v3, :cond_28

    return v4

    .line 563
    :cond_28
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 565
    :goto_2a
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result p3

    if-ge v0, p3, :cond_3d

    if-eqz v4, :cond_3d

    .line 566
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p3

    invoke-virtual {p0, p3, p2, v1, v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(Lcom/samsung/android/knox/lockscreen/LSOItemData;IJ)Z

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    if-nez v4, :cond_5b

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to store LSOItemData for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with ParendId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return v4
.end method

.method public setWallpaperData(JLjava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-eqz p3, :cond_34

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_34

    .line 285
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 287
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "policyName"

    const-string v3, "LOCKSCREEN_WALLPAPER"

    .line 288
    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "adminUid"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "ADMIN_REF"

    .line 292
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->insertRecord(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-nez p1, :cond_33

    .line 294
    invoke-virtual {p0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    :cond_33
    return p1

    .line 281
    :cond_34
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateAdminPref(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)Z
    .registers 5

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "accountObject"

    if-eqz p1, :cond_11

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_15

    :cond_11
    const/4 p1, 0x0

    .line 180
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_15
    const-string p1, "LOCKSCREEN_OVERLAY"

    .line 184
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "ADMIN_REF"

    const-string/jumbo v2, "policyName=?"

    .line 189
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method public final updateRecord(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert/Update record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSOStorageProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 529
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    .line 530
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of rows updated: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p3, :cond_54

    .line 533
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Failed to insert record - "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_54
    return p3
.end method

.method public final wipeLayerData(I)V
    .registers 7

    const-string v0, "LOCKSCREEN_OVERLAY"

    if-nez p1, :cond_8

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    goto :goto_1b

    :cond_8
    const-string v1, "Item_Layer"

    .line 211
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 220
    :goto_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOConstants;->getLayerName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSOStorageProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
