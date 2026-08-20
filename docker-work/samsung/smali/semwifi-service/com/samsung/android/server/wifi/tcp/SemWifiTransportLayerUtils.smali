.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;
.super Ljava/lang/Object;
.source "SemWifiTransportLayerUtils.java"


# static fields
.field private static final CATEGORY_END_TAG:Ljava/lang/String; = "class="

.field public static final CATEGORY_PLAYSTORE_ART_AND_DESIGN:Ljava/lang/String; = "ART_AND_DESIGN"

.field public static final CATEGORY_PLAYSTORE_AUTO_AND_VEHICLES:Ljava/lang/String; = "AUTO_AND_VEHICLES"

.field public static final CATEGORY_PLAYSTORE_BEAUTY:Ljava/lang/String; = "BEAUTY"

.field public static final CATEGORY_PLAYSTORE_BOOKS_AND_REFERENCE:Ljava/lang/String; = "BOOKS_AND_REFERENCE"

.field public static final CATEGORY_PLAYSTORE_BUSINESS:Ljava/lang/String; = "BUSINESS"

.field public static final CATEGORY_PLAYSTORE_COMICS:Ljava/lang/String; = "COMICS"

.field public static final CATEGORY_PLAYSTORE_COMMUNICATION:Ljava/lang/String; = "COMMUNICATION"

.field public static final CATEGORY_PLAYSTORE_DATING:Ljava/lang/String; = "DATING"

.field public static final CATEGORY_PLAYSTORE_EDUCATION:Ljava/lang/String; = "EDUCATION"

.field public static final CATEGORY_PLAYSTORE_ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final CATEGORY_PLAYSTORE_EVENTS:Ljava/lang/String; = "EVENTS"

.field public static final CATEGORY_PLAYSTORE_FAILED:Ljava/lang/String; = "FAILED"

.field public static final CATEGORY_PLAYSTORE_FINANCE:Ljava/lang/String; = "FINANCE"

.field public static final CATEGORY_PLAYSTORE_FOOD_AND_DRINK:Ljava/lang/String; = "FOOD_AND_DRINK"

.field public static final CATEGORY_PLAYSTORE_GAME:Ljava/lang/String; = "GAME"

.field public static final CATEGORY_PLAYSTORE_HEALTH_AND_FITNESS:Ljava/lang/String; = "HEALTH_AND_FITNESS"

.field public static final CATEGORY_PLAYSTORE_HOUSE_AND_HOME:Ljava/lang/String; = "HOUSE_AND_HOME"

.field public static final CATEGORY_PLAYSTORE_LIBRARIES_AND_DEMO:Ljava/lang/String; = "LIBRARIES_AND_DEMO"

.field public static final CATEGORY_PLAYSTORE_LIFESTYLE:Ljava/lang/String; = "LIFESTYLE"

.field public static final CATEGORY_PLAYSTORE_MAPS_AND_NAVIGATION:Ljava/lang/String; = "MAPS_AND_NAVIGATION"

.field public static final CATEGORY_PLAYSTORE_MEDICAL:Ljava/lang/String; = "MEDICAL"

.field public static final CATEGORY_PLAYSTORE_MUSIC_AND_AUDIO:Ljava/lang/String; = "MUSIC_AND_AUDIO"

.field public static final CATEGORY_PLAYSTORE_NEWS_AND_MAGAZINES:Ljava/lang/String; = "NEWS_AND_MAGAZINES"

.field public static final CATEGORY_PLAYSTORE_NONE:Ljava/lang/String; = "NONE"

.field public static final CATEGORY_PLAYSTORE_NOT_POPULAR:Ljava/lang/String; = "NOT_POPULAR"

.field public static final CATEGORY_PLAYSTORE_PARENTING:Ljava/lang/String; = "PARENTING"

.field public static final CATEGORY_PLAYSTORE_PERSONALIZATION:Ljava/lang/String; = "PERSONALIZATION"

.field public static final CATEGORY_PLAYSTORE_PHOTOGRAPHY:Ljava/lang/String; = "PHOTOGRAPHY"

.field public static final CATEGORY_PLAYSTORE_PRODUCTIVITY:Ljava/lang/String; = "PRODUCTIVITY"

.field public static final CATEGORY_PLAYSTORE_SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final CATEGORY_PLAYSTORE_SOCIAL:Ljava/lang/String; = "SOCIAL"

.field public static final CATEGORY_PLAYSTORE_SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final CATEGORY_PLAYSTORE_SYSTEM:Ljava/lang/String; = "SYSTEM"

.field public static final CATEGORY_PLAYSTORE_TOOLS:Ljava/lang/String; = "TOOLS"

.field public static final CATEGORY_PLAYSTORE_TRAVEL_AND_LOCAL:Ljava/lang/String; = "TRAVEL_AND_LOCAL"

.field public static final CATEGORY_PLAYSTORE_VIDEO_PLAYERS:Ljava/lang/String; = "VIDEO_PLAYERS"

.field public static final CATEGORY_PLAYSTORE_WEATHER:Ljava/lang/String; = "WEATHER"

.field private static final CATEGORY_START_TAG:Ljava/lang/String; = "<a itemprop=\"genre\""

.field private static final CATEGORY_TAG_LENGTH:I = 0x19

.field private static final CHAT_APPS:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final DOWNLOAD_END_TAG:Ljava/lang/String; = " times."

.field private static final DOWNLOAD_LIMIT:I = 0x186a0

.field private static final DOWNLOAD_MAX_FIX:I = 0x7a120

.field private static final DOWNLOAD_START_TAG:Ljava/lang/String; = "\",\"Downloaded "

.field private static final DOWNLOAD_TAG_LENGTH:I = 0xe

.field private static final GOOGLE_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final PACKAGE_CATEGORY_HTTP_QUERY_ENABLED:Z

.field private static final PLAYSTORE_CATEGORY_TIMEOUT:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z

    .line 33
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISABLED_MENU_K05"

    .line 34
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->PACKAGE_CATEGORY_HTTP_QUERY_ENABLED:Z

    const-string v1, "com.whatsapp"

    const-string v2, "com.kakao.talk"

    const-string v3, "com.skype.raider"

    const-string v4, "com.facebook.orca"

    const-string v5, "com.viber.voip"

    const-string v6, "jp.naver.line.android"

    const-string v7, "com.snapchat.android"

    const-string v8, "com.tencent.mm"

    const-string v9, "com.imo.android.imoim"

    .line 361
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->CHAT_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 27

    move-object/from16 v1, p1

    const-string v2, "getApplicationCategory - "

    const/4 v3, 0x0

    const-string v4, "SemWifiTransportLayerUtils"

    if-eqz p0, :cond_45c

    if-nez v1, :cond_d

    goto/16 :goto_45c

    .line 97
    :cond_d
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->PACKAGE_CATEGORY_HTTP_QUERY_ENABLED:Z

    const-string v5, "NONE"

    if-eqz v0, :cond_44b

    .line 99
    :try_start_13
    new-instance v0, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&hl=en"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_35} :catch_3e1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_3ae
    .catchall {:try_start_13 .. :try_end_35} :catchall_3a6

    const/16 v0, 0xfa0

    .line 102
    :try_start_37
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 104
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 105
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_45} :catch_398
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_45} :catch_38a
    .catchall {:try_start_37 .. :try_end_45} :catchall_37e

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_35c

    .line 107
    :try_start_49
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_353
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_34a
    .catchall {:try_start_49 .. :try_end_53} :catchall_343

    .line 109
    :try_start_53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    :goto_58
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_337
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_32b
    .catchall {:try_start_53 .. :try_end_5c} :catchall_320

    if-eqz v3, :cond_80

    .line 111
    :try_start_5e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_75
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_6a
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_58

    :catchall_62
    move-exception v0

    move-object v5, v2

    move-object v3, v6

    move-object/from16 v16, v7

    move-object v2, v1

    goto/16 :goto_427

    :catch_6a
    move-exception v0

    move-object v8, v5

    move-object/from16 v17, v8

    move-object v3, v6

    move-object/from16 v16, v7

    move-object v5, v2

    move-object v2, v1

    goto/16 :goto_3b7

    :catch_75
    move-exception v0

    move-object v8, v5

    move-object/from16 v17, v8

    move-object v3, v6

    move-object/from16 v16, v7

    move-object v5, v2

    move-object v2, v1

    goto/16 :goto_3ea

    .line 113
    :cond_80
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<a itemprop=\"genre\""

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPlaystoreCategory, indexCategoryStart : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9e} :catch_337
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9e} :catch_32b
    .catchall {:try_start_80 .. :try_end_9e} :catchall_320

    const-string v8, "HOUSE_AND_HOME"

    const-string v9, "HEALTH_AND_FITNESS"

    const-string v10, "FOOD_AND_DRINK"

    const-string v11, "FINANCE"

    const-string v12, "EVENTS"

    const-string v13, "ENTERTAINMENT"

    const-string v14, "EDUCATION"

    const-string v15, "DATING"

    move-object/from16 v16, v7

    const-string v7, "COMMUNICATION"

    move-object/from16 v17, v5

    const-string v5, "COMICS"

    const-string v1, "BUSINESS"

    move-object/from16 v18, v6

    const-string v6, "BOOKS_AND_REFERENCE"

    move-object/from16 v19, v2

    const-string v2, "BEAUTY"

    move-object/from16 v20, v8

    const-string v8, "AUTO_AND_VEHICLES"

    move-object/from16 v21, v9

    const-string v9, "ART_AND_DESIGN"

    move-object/from16 v22, v10

    const-string v10, "GAME"

    move-object/from16 v23, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_27f

    add-int/lit8 v3, v3, 0x19

    :try_start_d3
    const-string v11, "class="

    .line 120
    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 121
    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_274
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_dd} :catch_269
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_25f

    .line 122
    :try_start_dd
    sget-boolean v11, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z

    if-eqz v11, :cond_f8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "getApplicationCategory, category :  "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    :cond_f8
    move-object/from16 v24, v0

    .line 124
    :goto_fa
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_103

    move-object v8, v10

    goto/16 :goto_283

    .line 126
    :cond_103
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    move-object v8, v9

    goto/16 :goto_283

    .line 128
    :cond_10c
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_114

    goto/16 :goto_283

    .line 130
    :cond_114
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11d

    move-object v8, v2

    goto/16 :goto_283

    .line 132
    :cond_11d
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_126

    move-object v8, v6

    goto/16 :goto_283

    .line 134
    :cond_126
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12f

    move-object v8, v1

    goto/16 :goto_283

    .line 136
    :cond_12f
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_138

    move-object v8, v5

    goto/16 :goto_283

    .line 138
    :cond_138
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_141

    move-object v8, v7

    goto/16 :goto_283

    .line 140
    :cond_141
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14a

    move-object v8, v15

    goto/16 :goto_283

    .line 142
    :cond_14a
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_153

    move-object v8, v14

    goto/16 :goto_283

    .line 144
    :cond_153
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15c

    move-object v8, v13

    goto/16 :goto_283

    .line 146
    :cond_15c
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_165

    move-object v8, v12

    goto/16 :goto_283

    :cond_165
    move-object/from16 v0, v23

    .line 148
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_170

    :goto_16d
    move-object v8, v0

    goto/16 :goto_283

    :cond_170
    move-object/from16 v0, v22

    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_179

    goto :goto_16d

    :cond_179
    move-object/from16 v0, v21

    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_182

    goto :goto_16d

    :cond_182
    move-object/from16 v0, v20

    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18b

    goto :goto_16d

    :cond_18b
    const-string v0, "LIBRARIES_AND_DEMO"

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_197

    const-string v8, "LIBRARIES_AND_DEMO"

    goto/16 :goto_283

    :cond_197
    const-string v0, "LIFESTYLE"

    .line 158
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v8, "LIFESTYLE"

    goto/16 :goto_283

    :cond_1a3
    const-string v0, "MAPS_AND_NAVIGATION"

    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1af

    const-string v8, "MAPS_AND_NAVIGATION"

    goto/16 :goto_283

    :cond_1af
    const-string v0, "MEDICAL"

    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    const-string v8, "MEDICAL"

    goto/16 :goto_283

    :cond_1bb
    const-string v0, "MUSIC_AND_AUDIO"

    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-string v8, "MUSIC_AND_AUDIO"

    goto/16 :goto_283

    :cond_1c7
    const-string v0, "NEWS_AND_MAGAZINES"

    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    const-string v8, "NEWS_AND_MAGAZINES"

    goto/16 :goto_283

    :cond_1d3
    const-string v0, "PARENTING"

    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1df

    const-string v8, "PARENTING"

    goto/16 :goto_283

    :cond_1df
    const-string v0, "PERSONALIZATION"

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const-string v8, "PERSONALIZATION"

    goto/16 :goto_283

    :cond_1eb
    const-string v0, "PHOTOGRAPHY"

    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    const-string v8, "PHOTOGRAPHY"

    goto/16 :goto_283

    :cond_1f7
    const-string v0, "PRODUCTIVITY"

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_203

    const-string v8, "PRODUCTIVITY"

    goto/16 :goto_283

    :cond_203
    const-string v0, "SHOPPING"

    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20f

    const-string v8, "SHOPPING"

    goto/16 :goto_283

    :cond_20f
    const-string v0, "SOCIAL"

    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21b

    const-string v8, "SOCIAL"

    goto/16 :goto_283

    :cond_21b
    const-string v0, "SPORTS"

    .line 180
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_227

    const-string v8, "SPORTS"

    goto/16 :goto_283

    :cond_227
    const-string v0, "TOOLS"

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_232

    const-string v8, "TOOLS"

    goto :goto_283

    :cond_232
    const-string v0, "TRAVEL_AND_LOCAL"

    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23d

    const-string v8, "TRAVEL_AND_LOCAL"

    goto :goto_283

    :cond_23d
    const-string v0, "VIDEO_PLAYERS"

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_248

    const-string v8, "VIDEO_PLAYERS"

    goto :goto_283

    :cond_248
    const-string v0, "WEATHER"

    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_253

    const-string v8, "WEATHER"
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_252} :catch_25a
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_252} :catch_255
    .catchall {:try_start_dd .. :try_end_252} :catchall_25f

    goto :goto_283

    :cond_253
    move-object v8, v3

    goto :goto_283

    :catch_255
    move-exception v0

    move-object/from16 v2, p1

    move-object v8, v3

    goto :goto_26e

    :catch_25a
    move-exception v0

    move-object/from16 v2, p1

    move-object v8, v3

    goto :goto_279

    :catchall_25f
    move-exception v0

    move-object/from16 v2, p1

    move-object v1, v0

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_428

    :catch_269
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v17

    :goto_26e
    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_3b7

    :catch_274
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v17

    :goto_279
    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_3ea

    :cond_27f
    move-object/from16 v24, v0

    move-object/from16 v8, v17

    :goto_283
    :try_start_283
    const-string v0, "\",\"Downloaded "

    move-object/from16 v1, v24

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaystoreCategory, indexDownloadStart : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_308

    add-int/lit8 v0, v0, 0xe

    const-string v2, " times."

    .line 198
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 199
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 200
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z
    :try_end_2b0
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_2b0} :catch_319
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_2b0} :catch_312
    .catchall {:try_start_283 .. :try_end_2b0} :catchall_30e

    if-eqz v1, :cond_2c6

    :try_start_2b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationCategory, downloadCount :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c6
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2c6} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2c6} :catch_2cd
    .catchall {:try_start_2b2 .. :try_end_2c6} :catchall_25f

    .line 204
    :cond_2c6
    :try_start_2c6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2ca
    .catch Ljava/lang/NumberFormatException; {:try_start_2c6 .. :try_end_2ca} :catch_2d5
    .catch Ljava/io/IOException; {:try_start_2c6 .. :try_end_2ca} :catch_2d1
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2ca} :catch_2cd
    .catchall {:try_start_2c6 .. :try_end_2ca} :catchall_25f

    move-object/from16 v5, v19

    goto :goto_2f1

    :catch_2cd
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_26e

    :catch_2d1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_279

    :catch_2d5
    move-exception v0

    move-object v1, v0

    const v0, 0x7a120

    .line 207
    :try_start_2da
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_2da .. :try_end_2df} :catch_319
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2df} :catch_312
    .catchall {:try_start_2da .. :try_end_2df} :catchall_30e

    move-object/from16 v5, v19

    :try_start_2e1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2f1
    const v1, 0x186a0

    if-ge v0, v1, :cond_30a

    .line 212
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z

    if-eqz v0, :cond_2ff

    const-string v0, "getApplicationCategory, not popular app"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ff
    const-string v8, "NOT_POPULAR"
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2e1 .. :try_end_301} :catch_306
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_301} :catch_304
    .catchall {:try_start_2e1 .. :try_end_301} :catchall_302

    goto :goto_30a

    :catchall_302
    move-exception v0

    goto :goto_326

    :catch_304
    move-exception v0

    goto :goto_315

    :catch_306
    move-exception v0

    goto :goto_31c

    :cond_308
    move-object/from16 v5, v19

    :cond_30a
    :goto_30a
    move-object/from16 v3, v16

    goto/16 :goto_363

    :catchall_30e
    move-exception v0

    move-object/from16 v5, v19

    goto :goto_326

    :catch_312
    move-exception v0

    move-object/from16 v5, v19

    :goto_315
    move-object/from16 v2, p1

    goto/16 :goto_395

    :catch_319
    move-exception v0

    move-object/from16 v5, v19

    :goto_31c
    move-object/from16 v2, p1

    goto/16 :goto_3a3

    :catchall_320
    move-exception v0

    move-object v5, v2

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    :goto_326
    move-object/from16 v2, p1

    move-object v1, v0

    goto/16 :goto_386

    :catch_32b
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_393

    :catch_337
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v16, v7

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_3a1

    :catchall_343
    move-exception v0

    move-object v5, v2

    move-object/from16 v18, v6

    move-object/from16 v2, p1

    goto :goto_383

    :catch_34a
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v5, v2

    move-object/from16 v2, p1

    goto :goto_391

    :catch_353
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v5, v2

    move-object/from16 v2, p1

    goto :goto_39f

    :cond_35c
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v5, v2

    move-object/from16 v8, v17

    .line 225
    :goto_363
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_37a

    .line 229
    :try_start_368
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_36c

    goto :goto_37a

    :catch_36c
    move-exception v0

    move-object v1, v0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    goto/16 :goto_416

    :cond_37a
    :goto_37a
    move-object/from16 v2, p1

    goto/16 :goto_423

    :catchall_37e
    move-exception v0

    move-object v5, v2

    move-object/from16 v18, v6

    move-object v2, v1

    :goto_383
    move-object v1, v0

    move-object/from16 v16, v3

    :goto_386
    move-object/from16 v3, v18

    goto/16 :goto_428

    :catch_38a
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v5, v2

    move-object v2, v1

    :goto_391
    move-object/from16 v16, v3

    :goto_393
    move-object/from16 v8, v17

    :goto_395
    move-object/from16 v3, v18

    goto :goto_3b7

    :catch_398
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v5, v2

    move-object v2, v1

    :goto_39f
    move-object/from16 v16, v3

    :goto_3a1
    move-object/from16 v8, v17

    :goto_3a3
    move-object/from16 v3, v18

    goto :goto_3ea

    :catchall_3a6
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v16, v3

    goto/16 :goto_428

    :catch_3ae
    move-exception v0

    move-object/from16 v17, v5

    move-object v5, v2

    move-object v2, v1

    move-object/from16 v16, v3

    move-object/from16 v8, v17

    .line 221
    :goto_3b7
    :try_start_3b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationCategory - Exception "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3ce
    .catchall {:try_start_3b7 .. :try_end_3ce} :catchall_426

    if-eqz v3, :cond_3d3

    .line 225
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3d3
    if-eqz v16, :cond_423

    .line 229
    :try_start_3d5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_3d8
    .catch Ljava/io/IOException; {:try_start_3d5 .. :try_end_3d8} :catch_3d9

    goto :goto_423

    :catch_3d9
    move-exception v0

    move-object v1, v0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_413

    :catch_3e1
    move-exception v0

    move-object/from16 v17, v5

    move-object v5, v2

    move-object v2, v1

    move-object/from16 v16, v3

    move-object/from16 v8, v17

    .line 218
    :goto_3ea
    :try_start_3ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationCategory - IOException "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_401
    .catchall {:try_start_3ea .. :try_end_401} :catchall_426

    if-eqz v3, :cond_406

    .line 225
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_406
    if-eqz v16, :cond_423

    .line 229
    :try_start_408
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_40b
    .catch Ljava/io/IOException; {:try_start_408 .. :try_end_40b} :catch_40c

    goto :goto_423

    :catch_40c
    move-exception v0

    move-object v1, v0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_413
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_423
    :goto_423
    move-object/from16 v1, v17

    goto :goto_451

    :catchall_426
    move-exception v0

    :goto_427
    move-object v1, v0

    :goto_428
    if-eqz v3, :cond_42d

    .line 225
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_42d
    if-eqz v16, :cond_44a

    .line 229
    :try_start_42f
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_432
    .catch Ljava/io/IOException; {:try_start_42f .. :try_end_432} :catch_433

    goto :goto_44a

    :catch_433
    move-exception v0

    move-object v3, v0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :cond_44a
    :goto_44a
    throw v1

    :cond_44b
    move-object v2, v1

    move-object/from16 v17, v5

    move-object/from16 v1, v17

    move-object v8, v1

    .line 238
    :goto_451
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45b

    .line 239
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->getFrameworkApplicationCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_45b
    return-object v8

    :cond_45c
    :goto_45c
    const-string v0, "getApplicationCategory - null params"

    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getBrowserPackageNameList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "http://www.google.com"

    .line 328
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x20000

    .line 330
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 332
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_23

    :catch_37
    move-exception p0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrowserPackageNameList - Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiTransportLayerUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    return-object v0
.end method

.method private static getFrameworkApplicationCategory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "SemWifiTransportLayerUtils"

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x400080

    .line 248
    :try_start_9
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 250
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_42

    :catch_10
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationCategory - Exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41

    :catch_29
    move-exception p0

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationCategory - NameNotFoundException "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_41
    const/4 p0, -0x1

    :goto_42
    packed-switch p0, :pswitch_data_60

    const-string p0, "NONE"

    goto :goto_5f

    :pswitch_48
    const-string p0, "PRODUCTIVITY"

    goto :goto_5f

    :pswitch_4b
    const-string p0, "MAPS_AND_NAVIGATION"

    goto :goto_5f

    :pswitch_4e
    const-string p0, "NEWS_AND_MAGAZINES"

    goto :goto_5f

    :pswitch_51
    const-string p0, "SOCIAL"

    goto :goto_5f

    :pswitch_54
    const-string p0, "PHOTOGRAPHY"

    goto :goto_5f

    :pswitch_57
    const-string p0, "VIDEO_PLAYERS"

    goto :goto_5f

    :pswitch_5a
    const-string p0, "MUSIC_AND_AUDIO"

    goto :goto_5f

    :pswitch_5d
    const-string p0, "GAME"

    :goto_5f
    return-object p0

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
    .end packed-switch
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isAudioCommunicationMode(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "SemWifiTransportLayerUtils"

    :try_start_2
    const-string v1, "audio"

    .line 302
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 303
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    .line 304
    sget-boolean p0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z

    if-eqz p0, :cond_1a

    const-string p0, "isAudioCommunicationMode - true"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x1

    return p0

    .line 307
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->DBG:Z

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioCommunicationMode - false - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_51

    :catch_39
    move-exception p0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioCommunicationMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_51
    :goto_51
    const/4 p0, 0x0

    return p0
.end method

.method public static isBrowserApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 343
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.google.com"

    .line 344
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x20000

    .line 346
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 348
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 349
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_36

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :catch_36
    move-exception p0

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isBrowserApp - Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiTransportLayerUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method public static isChatApp(Ljava/lang/String;)Z
    .registers 6

    .line 367
    sget-object v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerUtils;->CHAT_APPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 368
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public static isLauchablePackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 317
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isSemGamePackage(Ljava/lang/String;)Z
    .registers 2

    .line 290
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 291
    invoke-static {p0}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0x400080

    .line 379
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_13

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :catch_13
    move-exception p0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSystemApp - NameNotFoundException "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiTransportLayerUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method
