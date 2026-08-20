.class public Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/ItemExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# static fields
.field private static final blacklist DELIMITER:Ljava/lang/String; = ",@,#,"

.field private static final blacklist FIELD_NUMBER:I = 0x9


# instance fields
.field private blacklist mDuration:J

.field private blacklist mFileSize:J

.field private blacklist mItemType:Ljava/lang/String;

.field private blacklist mItemUri:Landroid/net/Uri;

.field private blacklist mMimeType:Ljava/lang/String;

.field private blacklist mObjectId:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private blacklist mSubtitle:Landroid/net/Uri;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDuration(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFileSize(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemUri(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMimeType(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObjectId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProviderId(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubtitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTitle(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 59
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 61
    iput-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/extension/ItemExtractor$Seed-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    return-void
.end method

.method public static blacklist parseSeedString(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .registers 19
    .param p0, "seedString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    move-object/from16 v1, p0

    const-string v2, "null"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseSeedString : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ItemExtractor"

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ",@,#,"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 187
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    .line 189
    .local v5, "count":I
    const/16 v0, 0x9

    if-eq v5, v0, :cond_44

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_44
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "providerId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "objectId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "temp":Ljava/lang/String;
    const/4 v10, 0x0

    .line 202
    .local v10, "subtitle":Landroid/net/Uri;
    :try_start_59
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 203
    const/4 v0, 0x0

    .end local v10    # "subtitle":Landroid/net/Uri;
    .local v0, "subtitle":Landroid/net/Uri;
    goto :goto_65

    .line 205
    .end local v0    # "subtitle":Landroid/net/Uri;
    .restart local v10    # "subtitle":Landroid/net/Uri;
    :cond_61
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_65} :catch_67

    .line 209
    .end local v10    # "subtitle":Landroid/net/Uri;
    .restart local v0    # "subtitle":Landroid/net/Uri;
    :goto_65
    move-object v10, v0

    goto :goto_69

    .line 207
    .end local v0    # "subtitle":Landroid/net/Uri;
    .restart local v10    # "subtitle":Landroid/net/Uri;
    :catch_67
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 212
    const-wide/16 v11, -0x1

    .line 214
    .local v11, "duration":J
    :try_start_6f
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_79

    move-wide v11, v13

    .line 217
    goto :goto_7c

    .line 215
    :catch_79
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v11, -0x1

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7c
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 220
    const/4 v13, 0x0

    .line 222
    .local v13, "itemUri":Landroid/net/Uri;
    :try_start_81
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 223
    const/4 v0, 0x0

    .end local v13    # "itemUri":Landroid/net/Uri;
    .local v0, "itemUri":Landroid/net/Uri;
    goto :goto_8d

    .line 225
    .end local v0    # "itemUri":Landroid/net/Uri;
    .restart local v13    # "itemUri":Landroid/net/Uri;
    :cond_89
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8d} :catch_8f

    .line 229
    .end local v13    # "itemUri":Landroid/net/Uri;
    .restart local v0    # "itemUri":Landroid/net/Uri;
    :goto_8d
    move-object v2, v0

    goto :goto_91

    .line 227
    .end local v0    # "itemUri":Landroid/net/Uri;
    .restart local v13    # "itemUri":Landroid/net/Uri;
    :catch_8f
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "itemUri":Landroid/net/Uri;
    .local v2, "itemUri":Landroid/net/Uri;
    :goto_91
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "mime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 234
    const-wide/16 v14, -0x1

    .line 236
    .local v14, "filesize":J
    :try_start_9b
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a3} :catch_a6

    move-wide/from16 v14, v16

    .line 239
    goto :goto_a9

    .line 237
    :catch_a6
    move-exception v0

    .line 238
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v14, -0x1

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a9
    new-instance v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v0}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    .line 242
    .local v0, "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    iput-object v3, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 243
    iput-object v6, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 244
    iput-object v7, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 245
    iput-object v8, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 246
    iput-object v10, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 247
    iput-wide v11, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 248
    iput-object v2, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    .line 249
    iput-object v13, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    .line 250
    iput-wide v14, v0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    .line 252
    return-object v0
.end method

.method public static blacklist parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    .registers 20
    .param p0, "seedString"    # Ljava/lang/String;

    .line 258
    move-object/from16 v1, p0

    const-string v2, "null"

    const/4 v0, 0x0

    const-string v3, "ItemExtractor"

    if-nez v1, :cond_10

    .line 259
    const-string/jumbo v2, "seedString == null"

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v0

    .line 262
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseSeedStringUsingSplit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v4, ",@,#,"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "seedMember":[Ljava/lang/String;
    array-length v5, v4

    .line 266
    .local v5, "count":I
    const/4 v6, 0x0

    .line 268
    .local v6, "index":I
    const/16 v7, 0x9

    if-eq v5, v7, :cond_49

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-object v0

    .line 273
    :cond_49
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "index":I
    .local v0, "index":I
    aget-object v3, v4, v6

    .line 274
    .local v3, "type":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "index":I
    .restart local v6    # "index":I
    aget-object v7, v4, v0

    .line 275
    .local v7, "providerId":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "index":I
    .restart local v0    # "index":I
    aget-object v6, v4, v6

    .line 277
    .local v6, "objectId":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "index":I
    .local v8, "index":I
    aget-object v9, v4, v0

    .line 278
    .local v9, "title":Ljava/lang/String;
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index":I
    .local v10, "index":I
    aget-object v8, v4, v8

    .line 279
    .local v8, "temp":Ljava/lang/String;
    const/4 v11, 0x0

    .line 281
    .local v11, "subtitle":Landroid/net/Uri;
    :try_start_5e
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 282
    const/4 v0, 0x0

    .end local v11    # "subtitle":Landroid/net/Uri;
    .local v0, "subtitle":Landroid/net/Uri;
    goto :goto_6a

    .line 284
    .end local v0    # "subtitle":Landroid/net/Uri;
    .restart local v11    # "subtitle":Landroid/net/Uri;
    :cond_66
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_6c

    .line 288
    .end local v11    # "subtitle":Landroid/net/Uri;
    .restart local v0    # "subtitle":Landroid/net/Uri;
    :goto_6a
    move-object v11, v0

    goto :goto_6e

    .line 286
    .end local v0    # "subtitle":Landroid/net/Uri;
    .restart local v11    # "subtitle":Landroid/net/Uri;
    :catch_6c
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "index":I
    .local v12, "index":I
    aget-object v8, v4, v10

    .line 291
    const-wide/16 v13, -0x1

    .line 293
    .local v13, "duration":J
    :try_start_74
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7c} :catch_7e

    move-wide v13, v15

    .line 296
    goto :goto_81

    .line 294
    :catch_7e
    move-exception v0

    .line 295
    .restart local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v13, -0x1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    add-int/lit8 v10, v12, 0x1

    .end local v12    # "index":I
    .restart local v10    # "index":I
    aget-object v8, v4, v12

    .line 299
    const/4 v12, 0x0

    .line 301
    .local v12, "itemUri":Landroid/net/Uri;
    :try_start_86
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 302
    const/4 v0, 0x0

    .end local v12    # "itemUri":Landroid/net/Uri;
    .local v0, "itemUri":Landroid/net/Uri;
    goto :goto_92

    .line 304
    .end local v0    # "itemUri":Landroid/net/Uri;
    .restart local v12    # "itemUri":Landroid/net/Uri;
    :cond_8e
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_92} :catch_94

    .line 308
    .end local v12    # "itemUri":Landroid/net/Uri;
    .restart local v0    # "itemUri":Landroid/net/Uri;
    :goto_92
    move-object v2, v0

    goto :goto_96

    .line 306
    .end local v0    # "itemUri":Landroid/net/Uri;
    .restart local v12    # "itemUri":Landroid/net/Uri;
    :catch_94
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "itemUri":Landroid/net/Uri;
    .local v2, "itemUri":Landroid/net/Uri;
    :goto_96
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "index":I
    .local v0, "index":I
    aget-object v10, v4, v10

    .line 312
    .local v10, "mime":Ljava/lang/String;
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "index":I
    .local v12, "index":I
    aget-object v8, v4, v0

    .line 313
    const-wide/16 v15, -0x1

    .line 315
    .local v15, "filesize":J
    :try_start_a0
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a8} :catch_ac

    move-wide/from16 v15, v17

    .line 318
    move-wide v0, v15

    goto :goto_b0

    .line 316
    :catch_ac
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v15, -0x1

    move-wide v0, v15

    .line 319
    .end local v15    # "filesize":J
    .local v0, "filesize":J
    :goto_b0
    new-instance v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;

    invoke-direct {v15}, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;-><init>()V

    .line 320
    .local v15, "seed":Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;
    iput-object v3, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    .line 321
    iput-object v7, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    .line 322
    iput-object v6, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    .line 323
    iput-object v9, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    .line 324
    iput-object v11, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 325
    iput-wide v13, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    .line 326
    iput-object v2, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    .line 327
    iput-object v10, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    .line 328
    iput-wide v0, v15, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    .line 330
    return-object v15
.end method


# virtual methods
.method public blacklist getDuration()J
    .registers 3

    .line 144
    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    return-wide v0
.end method

.method public blacklist getFileSize()J
    .registers 3

    .line 175
    iget-wide v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    return-wide v0
.end method

.method public blacklist getItemType()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getItemUri()Landroid/net/Uri;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getObjectID()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderID()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSeedString()Ljava/lang/String;
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    const-string v1, "null"

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    .line 78
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_20
    :goto_20
    move-object v0, v1

    .line 79
    .local v0, "subtitle":Ljava/lang/String;
    :goto_21
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    .line 80
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_38

    goto :goto_3f

    :cond_38
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_3f
    :goto_3f
    nop

    .line 82
    .local v1, "itemUri":Ljava/lang/String;
    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",@,#,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mFileSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getSubtitle()Landroid/net/Uri;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;

    return-object v0
.end method
