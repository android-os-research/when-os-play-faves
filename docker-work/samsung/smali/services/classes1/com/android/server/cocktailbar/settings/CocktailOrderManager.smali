.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;,
        Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    }
.end annotation


# static fields
.field public static final SETTINGS_ORDER_FILENAME:Ljava/lang/String; = "cocktail_order.xml"

.field public static final TAG:Ljava/lang/String; = "CocktailOrderManager"


# instance fields
.field public final TAG_CLASS_NAME:Ljava/lang/String;

.field public final TAG_COCKTAIL_ID:Ljava/lang/String;

.field public final TAG_COCKTAIL_ORDER:Ljava/lang/String;

.field public final TAG_ORDER:Ljava/lang/String;

.field public final TAG_PACKAGE:Ljava/lang/String;

.field public final TAG_PROVIDER:Ljava/lang/String;

.field public final TAG_USER_ID:Ljava/lang/String;

.field public mCocktailOrderedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cocktail_order"

    .line 38
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ORDER:Ljava/lang/String;

    const-string/jumbo v0, "provider"

    .line 39
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PROVIDER:Ljava/lang/String;

    const-string/jumbo v0, "order"

    .line 40
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_ORDER:Ljava/lang/String;

    const-string/jumbo v0, "user_id"

    .line 41
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_USER_ID:Ljava/lang/String;

    const-string v0, "cocktail_id"

    .line 42
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_COCKTAIL_ID:Ljava/lang/String;

    const-string/jumbo v0, "package"

    .line 43
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_PACKAGE:Ljava/lang/String;

    const-string v0, "class_name"

    .line 44
    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG_CLASS_NAME:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getSettingsFile(I)Ljava/io/File;
    .registers 3

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "cocktail_order.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 6

    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CocktailOrderManager]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_a
    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    .line 323
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2a

    .line 325
    iget-object v4, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    iget v4, v4, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2a
    const-string p0, "\n"

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_36

    :cond_30
    const-string/jumbo p0, "null\n"

    .line 329
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_3c

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3c
    move-exception p0

    .line 331
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public getMatchedSortIds(Ljava/util/ArrayList;Landroid/util/SparseArray;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->loadStateLocked()V

    .line 265
    sget-object v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMatchedSortIds: loadedorder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_5c

    .line 269
    :cond_2f
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 270
    new-instance v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;

    iget-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;-><init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 272
    :cond_43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p2, p0, [I

    const/4 v0, 0x0

    :goto_4a
    if-ge v0, p0, :cond_5b

    .line 275
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_5b
    return-object p2

    :catchall_5c
    move-exception p0

    .line 267
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final loadStateLocked()V
    .registers 5

    .line 94
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_12
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 102
    :goto_c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2a

    :catchall_10
    move-exception p0

    goto :goto_2b

    :catch_12
    move-exception p0

    .line 100
    :try_start_13
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_10

    goto :goto_c

    :goto_2a
    return-void

    .line 102
    :goto_2b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    throw p0
.end method

.method public final readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .registers 16

    const-string v0, "failed parsing "

    const-string v1, "UTF-8"

    const-string v2, "failed to close stream "

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 146
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 147
    invoke-interface {v6, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    :cond_15
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_76

    .line 153
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cocktail_order"

    .line 154
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const-string/jumbo v8, "version"

    .line 155
    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_2f} :catch_394
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_2f} :catch_302
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_2f} :catch_270
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2f} :catch_1de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_2f} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_ae
    .catchall {:try_start_9 .. :try_end_2f} :catchall_aa

    .line 157
    :try_start_2f
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_32} :catch_76
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_32} :catch_394
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_32} :catch_270
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_1de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2f .. :try_end_32} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_ae
    .catchall {:try_start_2f .. :try_end_32} :catchall_aa

    goto :goto_76

    :cond_33
    :try_start_33
    const-string/jumbo v9, "provider"

    .line 161
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    const-string/jumbo v8, "order"

    .line 162
    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "user_id"

    .line 163
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "cocktail_id"

    .line 164
    invoke-interface {v6, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 165
    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v12, "package"

    invoke-interface {v6, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "class_name"

    invoke-interface {v6, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v12, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    invoke-direct {v12, v10, v11, v9, v8}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;-><init>(ILandroid/content/ComponentName;II)V

    .line 168
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_76} :catch_394
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_76} :catch_302
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_76} :catch_270
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_76} :catch_1de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_33 .. :try_end_76} :catch_14c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_76} :catch_ae
    .catchall {:try_start_33 .. :try_end_76} :catchall_aa

    :catch_76
    :cond_76
    :goto_76
    if-ne v7, v3, :cond_15

    .line 174
    :try_start_78
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 175
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readStateFromFileLocked: orderList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_97} :catch_a7
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_97} :catch_a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_78 .. :try_end_97} :catch_a1
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_97} :catch_9e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_78 .. :try_end_97} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_97} :catch_99
    .catchall {:try_start_78 .. :try_end_97} :catchall_425

    goto/16 :goto_424

    :catch_99
    move-exception p1

    goto :goto_b0

    :catch_9b
    move-exception p1

    goto/16 :goto_14e

    :catch_9e
    move-exception p1

    goto/16 :goto_1e0

    :catch_a1
    move-exception p1

    goto/16 :goto_272

    :catch_a4
    move-exception p1

    goto/16 :goto_304

    :catch_a7
    move-exception p1

    goto/16 :goto_396

    :catchall_aa
    move-exception p1

    move v3, v5

    goto/16 :goto_426

    :catch_ae
    move-exception p1

    move v3, v5

    .line 187
    :goto_b0
    :try_start_b0
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_c6
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d8} :catch_10b
    .catchall {:try_start_c6 .. :try_end_d8} :catchall_109

    .line 195
    :try_start_d8
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_dd
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e6} :catch_106
    .catchall {:try_start_d8 .. :try_end_e6} :catchall_103

    goto :goto_dd

    .line 204
    :cond_e7
    :try_start_e7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec

    goto/16 :goto_424

    :catch_ec
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_f4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_424

    :catchall_103
    move-exception p0

    move-object v4, p1

    goto :goto_130

    :catch_106
    move-exception p0

    move-object v4, p1

    goto :goto_10c

    :catchall_109
    move-exception p0

    goto :goto_130

    :catch_10b
    move-exception p0

    .line 200
    :goto_10c
    :try_start_10c
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_10c .. :try_end_120} :catchall_109

    if-eqz v4, :cond_424

    .line 204
    :try_start_122
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_127

    goto/16 :goto_424

    :catch_127
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_f4

    :goto_130
    if-eqz v4, :cond_14b

    .line 204
    :try_start_132
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_136

    goto :goto_14b

    :catch_136
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_14b
    :goto_14b
    throw p0

    :catch_14c
    move-exception p1

    move v3, v5

    .line 185
    :goto_14e
    :try_start_14e
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catchall {:try_start_14e .. :try_end_162} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_164
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_176} :catch_19c
    .catchall {:try_start_164 .. :try_end_176} :catchall_19a

    .line 195
    :try_start_176
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_17b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_185

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_184} :catch_197
    .catchall {:try_start_176 .. :try_end_184} :catchall_194

    goto :goto_17b

    .line 204
    :cond_185
    :try_start_185
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_18a

    goto/16 :goto_424

    :catch_18a
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :catchall_194
    move-exception p0

    move-object v4, p1

    goto :goto_1c2

    :catch_197
    move-exception p0

    move-object v4, p1

    goto :goto_19d

    :catchall_19a
    move-exception p0

    goto :goto_1c2

    :catch_19c
    move-exception p0

    .line 200
    :goto_19d
    :try_start_19d
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catchall {:try_start_19d .. :try_end_1b1} :catchall_19a

    if-eqz v4, :cond_424

    .line 204
    :try_start_1b3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1b6} :catch_1b8

    goto/16 :goto_424

    :catch_1b8
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :goto_1c2
    if-eqz v4, :cond_1dd

    .line 204
    :try_start_1c4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1c8

    goto :goto_1dd

    :catch_1c8
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1dd
    :goto_1dd
    throw p0

    :catch_1de
    move-exception p1

    move v3, v5

    .line 183
    :goto_1e0
    :try_start_1e0
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catchall {:try_start_1e0 .. :try_end_1f4} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_1f6
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_208} :catch_22e
    .catchall {:try_start_1f6 .. :try_end_208} :catchall_22c

    .line 195
    :try_start_208
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_20d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_217

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_216} :catch_229
    .catchall {:try_start_208 .. :try_end_216} :catchall_226

    goto :goto_20d

    .line 204
    :cond_217
    :try_start_217
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_21a} :catch_21c

    goto/16 :goto_424

    :catch_21c
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :catchall_226
    move-exception p0

    move-object v4, p1

    goto :goto_254

    :catch_229
    move-exception p0

    move-object v4, p1

    goto :goto_22f

    :catchall_22c
    move-exception p0

    goto :goto_254

    :catch_22e
    move-exception p0

    .line 200
    :goto_22f
    :try_start_22f
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_243
    .catchall {:try_start_22f .. :try_end_243} :catchall_22c

    if-eqz v4, :cond_424

    .line 204
    :try_start_245
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_248
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_248} :catch_24a

    goto/16 :goto_424

    :catch_24a
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :goto_254
    if-eqz v4, :cond_26f

    .line 204
    :try_start_256
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_25a

    goto :goto_26f

    :catch_25a
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_26f
    :goto_26f
    throw p0

    :catch_270
    move-exception p1

    move v3, v5

    .line 181
    :goto_272
    :try_start_272
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_286
    .catchall {:try_start_272 .. :try_end_286} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_288
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29a
    .catch Ljava/io/IOException; {:try_start_288 .. :try_end_29a} :catch_2c0
    .catchall {:try_start_288 .. :try_end_29a} :catchall_2be

    .line 195
    :try_start_29a
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_29f
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a9

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_29a .. :try_end_2a8} :catch_2bb
    .catchall {:try_start_29a .. :try_end_2a8} :catchall_2b8

    goto :goto_29f

    .line 204
    :cond_2a9
    :try_start_2a9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2ac
    .catch Ljava/io/IOException; {:try_start_2a9 .. :try_end_2ac} :catch_2ae

    goto/16 :goto_424

    :catch_2ae
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :catchall_2b8
    move-exception p0

    move-object v4, p1

    goto :goto_2e6

    :catch_2bb
    move-exception p0

    move-object v4, p1

    goto :goto_2c1

    :catchall_2be
    move-exception p0

    goto :goto_2e6

    :catch_2c0
    move-exception p0

    .line 200
    :goto_2c1
    :try_start_2c1
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d5
    .catchall {:try_start_2c1 .. :try_end_2d5} :catchall_2be

    if-eqz v4, :cond_424

    .line 204
    :try_start_2d7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2da
    .catch Ljava/io/IOException; {:try_start_2d7 .. :try_end_2da} :catch_2dc

    goto/16 :goto_424

    :catch_2dc
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :goto_2e6
    if-eqz v4, :cond_301

    .line 204
    :try_start_2e8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2eb} :catch_2ec

    goto :goto_301

    :catch_2ec
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_301
    :goto_301
    throw p0

    :catch_302
    move-exception p1

    move v3, v5

    .line 179
    :goto_304
    :try_start_304
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_318
    .catchall {:try_start_304 .. :try_end_318} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_31a
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_32c} :catch_352
    .catchall {:try_start_31a .. :try_end_32c} :catchall_350

    .line 195
    :try_start_32c
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_331
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33b

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_32c .. :try_end_33a} :catch_34d
    .catchall {:try_start_32c .. :try_end_33a} :catchall_34a

    goto :goto_331

    .line 204
    :cond_33b
    :try_start_33b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_33e
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_33e} :catch_340

    goto/16 :goto_424

    :catch_340
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :catchall_34a
    move-exception p0

    move-object v4, p1

    goto :goto_378

    :catch_34d
    move-exception p0

    move-object v4, p1

    goto :goto_353

    :catchall_350
    move-exception p0

    goto :goto_378

    :catch_352
    move-exception p0

    .line 200
    :goto_353
    :try_start_353
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_367
    .catchall {:try_start_353 .. :try_end_367} :catchall_350

    if-eqz v4, :cond_424

    .line 204
    :try_start_369
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_36c
    .catch Ljava/io/IOException; {:try_start_369 .. :try_end_36c} :catch_36e

    goto/16 :goto_424

    :catch_36e
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :goto_378
    if-eqz v4, :cond_393

    .line 204
    :try_start_37a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_37d
    .catch Ljava/io/IOException; {:try_start_37a .. :try_end_37d} :catch_37e

    goto :goto_393

    :catch_37e
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_393
    :goto_393
    throw p0

    :catch_394
    move-exception p1

    move v3, v5

    .line 177
    :goto_396
    :try_start_396
    sget-object v5, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3aa
    .catchall {:try_start_396 .. :try_end_3aa} :catchall_425

    if-nez v3, :cond_424

    .line 192
    :try_start_3ac
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3be
    .catch Ljava/io/IOException; {:try_start_3ac .. :try_end_3be} :catch_3e3
    .catchall {:try_start_3ac .. :try_end_3be} :catchall_3e1

    .line 195
    :try_start_3be
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_3c3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3cd

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3cc
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3cc} :catch_3de
    .catchall {:try_start_3be .. :try_end_3cc} :catchall_3db

    goto :goto_3c3

    .line 204
    :cond_3cd
    :try_start_3cd
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d0
    .catch Ljava/io/IOException; {:try_start_3cd .. :try_end_3d0} :catch_3d1

    goto :goto_424

    :catch_3d1
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :catchall_3db
    move-exception p0

    move-object v4, p1

    goto :goto_408

    :catch_3de
    move-exception p0

    move-object v4, p1

    goto :goto_3e4

    :catchall_3e1
    move-exception p0

    goto :goto_408

    :catch_3e3
    move-exception p0

    .line 200
    :goto_3e4
    :try_start_3e4
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f8
    .catchall {:try_start_3e4 .. :try_end_3f8} :catchall_3e1

    if-eqz v4, :cond_424

    .line 204
    :try_start_3fa
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3fd
    .catch Ljava/io/IOException; {:try_start_3fa .. :try_end_3fd} :catch_3fe

    goto :goto_424

    :catch_3fe
    move-exception p0

    .line 206
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_f4

    :goto_408
    if-eqz v4, :cond_423

    .line 204
    :try_start_40a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_40d
    .catch Ljava/io/IOException; {:try_start_40a .. :try_end_40d} :catch_40e

    goto :goto_423

    :catch_40e
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_423
    :goto_423
    throw p0

    :cond_424
    :goto_424
    return-void

    :catchall_425
    move-exception p1

    :goto_426
    if-nez v3, :cond_4ab

    .line 192
    :try_start_428
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object p0

    .line 193
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43a
    .catch Ljava/io/IOException; {:try_start_428 .. :try_end_43a} :catch_46b
    .catchall {:try_start_428 .. :try_end_43a} :catchall_469

    .line 195
    :try_start_43a
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :goto_43f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_449

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_448
    .catch Ljava/io/IOException; {:try_start_43a .. :try_end_448} :catch_466
    .catchall {:try_start_43a .. :try_end_448} :catchall_463

    goto :goto_43f

    .line 204
    :cond_449
    :try_start_449
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_44c
    .catch Ljava/io/IOException; {:try_start_449 .. :try_end_44c} :catch_44d

    goto :goto_4ab

    :catch_44d
    move-exception p0

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ab

    :catchall_463
    move-exception p0

    move-object v4, v0

    goto :goto_48f

    :catch_466
    move-exception p0

    move-object v4, v0

    goto :goto_46c

    :catchall_469
    move-exception p0

    goto :goto_48f

    :catch_46b
    move-exception p0

    .line 200
    :goto_46c
    :try_start_46c
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_480
    .catchall {:try_start_46c .. :try_end_480} :catchall_469

    if-eqz v4, :cond_4ab

    .line 204
    :try_start_482
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_485
    .catch Ljava/io/IOException; {:try_start_482 .. :try_end_485} :catch_486

    goto :goto_4ab

    :catch_486
    move-exception p0

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_455

    :goto_48f
    if-eqz v4, :cond_4aa

    .line 204
    :try_start_491
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_494
    .catch Ljava/io/IOException; {:try_start_491 .. :try_end_494} :catch_495

    goto :goto_4aa

    :catch_495
    move-exception p1

    .line 206
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4aa
    :goto_4aa
    throw p0

    .line 212
    :cond_4ab
    :goto_4ab
    throw p1
.end method

.method public final saveStateLocked()V
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->savedStateFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 81
    :try_start_4
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_34

    .line 85
    :cond_12
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 86
    sget-object p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to save state, restoring backup."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_34

    :catch_1d
    move-exception p0

    .line 89
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed open state file for write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public final savedStateFile()Landroid/util/AtomicFile;
    .registers 3

    const/4 p0, 0x0

    .line 61
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 62
    invoke-static {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->getSettingsFile(I)Ljava/io/File;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_23

    .line 66
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "savedStateFile Failed mkdirs"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_23
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/cocktail_order.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 71
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed rename to setting file."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_37
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setOrderedList(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->saveStateLocked()V

    .line 219
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .registers 12

    const-string/jumbo v0, "provider"

    const-string v1, "cocktail_order"

    const/4 v2, 0x0

    .line 110
    :try_start_6
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    .line 111
    sget-object p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to write state: no order info"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 114
    :cond_12
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v4, "utf-8"

    .line 115
    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 116
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 117
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    iget-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v5, v2

    :goto_2d
    if-ge v5, p1, :cond_7a

    .line 120
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mCocktailOrderedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 121
    iget-object v7, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_77

    .line 123
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "order"

    .line 124
    iget v9, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "user_id"

    .line 125
    iget v9, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mUserId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "cocktail_id"

    .line 126
    iget v6, v6, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "package"

    .line 127
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "class_name"

    .line 128
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 132
    :cond_7a
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_80} :catch_82

    const/4 p0, 0x1

    return p0

    :catch_82
    move-exception p0

    .line 136
    sget-object p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
