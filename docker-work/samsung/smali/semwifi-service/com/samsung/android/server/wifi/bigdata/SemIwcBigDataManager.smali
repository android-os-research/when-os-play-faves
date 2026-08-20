.class public Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;
.super Ljava/lang/Object;
.source "SemIwcBigDataManager.java"


# static fields
.field private static final ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field public static final APP_ID:Ljava/lang/String; = "android.net.wifi"

.field private static final ARGS_APP_ID_STR:Ljava/lang/String; = "app_id"

.field private static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field private static final ARGS_EXTRA_STR:Ljava/lang/String; = "extra"

.field private static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final ARGS_VALUE_STR:Ljava/lang/String; = "value"

.field private static DBG:Z = false

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field public static final FEATURE_MIWC:Ljava/lang/String; = "MIWC"

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "SemIwcBigDataManager"


# instance fields
.field public final mBigDataFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private final mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    .line 52
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string v0, "HqmManagerService"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SemHqmManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->initialize()V

    return-void
.end method

.method private initialize()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;-><init>()V

    const-string v1, "MIWC"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 227
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    const-string v1, "SemIwcBigDataManager"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastToContextFramework - feature : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extra : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2a
    :try_start_2a
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v0, :cond_38

    .line 231
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_37

    const-string p0, "survey mode is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void

    :cond_38
    if-nez p1, :cond_44

    .line 235
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_43

    const-string p0, "feature is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void

    .line 238
    :cond_44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "android.net.wifi"

    .line 239
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    .line 240
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_85

    .line 241
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_85

    const/4 p1, 0x0

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_62} :catch_ad

    const/16 v2, 0x7b

    const-string v3, "extra"

    if-ne p1, v2, :cond_6c

    .line 243
    :try_start_68
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    .line 245
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_94

    const-string p1, "value"

    .line 249
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    :cond_94
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    .line 253
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_ac} :catch_ad

    goto :goto_c5

    :catch_ad
    move-exception p0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c5
    return-void
.end method

.method private sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 12

    const-string v0, "SemIwcBigDataManager"

    .line 265
    :try_start_2
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastToContextFramework - features : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extras : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", values : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2d
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v1, :cond_3b

    .line 268
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_3a

    const-string p0, "survey mode is not enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void

    :cond_3b
    if-nez p1, :cond_47

    .line 272
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_46

    const-string p0, "feature is not enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    .line 275
    :cond_47
    array-length v1, p2

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    .line 276
    :goto_4c
    array-length v4, p1

    if-ge v3, v4, :cond_b7

    .line 277
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    const-string v5, "app_id"

    const-string v6, "android.net.wifi"

    .line 278
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    aget-object v4, v1, v3

    const-string v5, "feature"

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    aget-object v4, p2, v3

    if-eqz v4, :cond_a1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a1

    .line 281
    aget-object v4, p2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_ce

    const/16 v5, 0x7b

    const-string v6, "extra"

    if-ne v4, v5, :cond_84

    .line 282
    :try_start_7c
    aget-object v4, v1, v3

    aget-object v5, p2, v3

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 284
    :cond_84
    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_a1
    :goto_a1
    aget-wide v4, p3, v3

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_b4

    .line 288
    aget-object v6, v1, v3

    const-string v7, "value"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 292
    :cond_b7
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    .line 293
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_cd} :catch_ce

    goto :goto_e6

    :catch_ce
    move-exception p0

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e6
    return-void
.end method

.method private sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 303
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_4a

    if-nez p1, :cond_7

    goto :goto_4a

    .line 306
    :cond_7
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz v1, :cond_29

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send H/W Parameters to HQM with appid - feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", logmaps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemIwcBigDataManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v1, 0x0

    .line 314
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 315
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    move-result-object v5

    .line 318
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v2, "WiFi"

    const-string v7, ""

    const-string v9, ""

    const-string v10, "android.net.wifi"

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public addOrUpdateFeatureAllValue(Ljava/lang/String;)Z
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateAllValue()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;D)Z
    .registers 6

    .line 92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->addOrUpdateValues(Ljava/util/HashMap;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public clearAllFeatures()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    .line 149
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->resetData()V

    goto :goto_12

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public clearFeature(Ljava/lang/String;)Z
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->resetData()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertLog(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 156
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;J)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;J)V
    .registers 7

    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-nez v0, :cond_9

    const-string v0, "sm"

    goto :goto_b

    :cond_9
    const-string v0, "ph"

    .line 164
    :goto_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 165
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getJsonFormat()Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getIsDqaEnabled()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 167
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 168
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 170
    :cond_4b
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4e
    :goto_4e
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_51
    return-void
.end method

.method public insertLog(Ljava/lang/String;Z)V
    .registers 9

    if-eqz p2, :cond_2e

    .line 179
    iget-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 180
    iget-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getJsonFormatArray()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 182
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 183
    array-length v2, p2

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v0, :cond_2a

    .line 186
    aput-object p1, v1, v3

    const-wide/16 v4, -0x1

    .line 187
    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 189
    :cond_2a
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_31

    .line 193
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public insertLog(Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 9

    .line 198
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->ENABLE_SURVEY_MODE:Z

    const-string v1, "SemIwcBigDataManager"

    if-nez v0, :cond_10

    .line 199
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_f

    const-string p0, "survey mode is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    if-nez p1, :cond_1c

    .line 203
    sget-boolean p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->DBG:Z

    if-eqz p0, :cond_1b

    const-string p0, "feature is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :cond_1c
    if-nez p2, :cond_1f

    return-void

    .line 209
    :cond_1f
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 210
    array-length v2, p2

    new-array v2, v2, [J

    if-eqz p3, :cond_3f

    .line 213
    iget-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_42

    const/4 p3, 0x0

    :goto_30
    if-ge p3, v0, :cond_3b

    .line 215
    aput-object p1, v1, p3

    const-wide/16 v3, -0x1

    .line 216
    aput-wide v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 218
    :cond_3b
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_42

    .line 222
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method
