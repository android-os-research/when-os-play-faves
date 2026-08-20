.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;
.super Ljava/lang/Object;
.source "WcmBigDataManager.java"


# static fields
.field private static final ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ACTION_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final ARGS_APP_ID_STR:Ljava/lang/String; = "app_id"

.field private static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field private static final ARGS_EXTRA_STR:Ljava/lang/String; = "extra"

.field private static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field private static final ARGS_VALUE_STR:Ljava/lang/String; = "value"

.field private static final DBG:Z

.field public static final ENABLE_SURVEY_MODE:Z

.field public static final ENABLE_UNIFIED_HQM_SERVER:Z = true

.field public static final FEATURE_SSIV:Ljava/lang/String; = "SSIV"

.field public static final FEATURE_SSMA:Ljava/lang/String; = "SSMA"

.field public static final FEATURE_SSVI:Ljava/lang/String; = "SSVI"

.field public static final FEATURE_TCPE:Ljava/lang/String; = "TCPE"

.field public static final FEATURE_WFCP:Ljava/lang/String; = "WFCP"

.field public static final FEATURE_WFMH:Ljava/lang/String; = "WFMH"

.field public static final FEATURE_WFQC:Ljava/lang/String; = "WFQC"

.field public static final FEATURE_WFSN:Ljava/lang/String; = "WFSN"

.field public static final FEATURE_WNIC:Ljava/lang/String; = "WNIC"

.field private static final PACKAGE_NAME_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "WcmBigDataManager"


# instance fields
.field public final APP_ID:Ljava/lang/String;

.field public final mBigDataFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;",
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

    .line 21
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.net.wifi"

    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->APP_ID:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    const-string v0, "HqmManagerService"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SemHqmManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->initialize()V

    return-void
.end method

.method private initialize()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;-><init>()V

    const-string v2, "TCPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSIV;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSIV;-><init>()V

    const-string v2, "SSIV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;-><init>()V

    const-string v2, "SSVI"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;-><init>()V

    const-string v2, "SSMA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFSN;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFSN;-><init>()V

    const-string v1, "WFSN"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 214
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    const-string v1, "WcmBigDataManager"

    if-eqz v0, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToContextFramework - feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2a
    :try_start_2a
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v2, :cond_36

    if-eqz v0, :cond_35

    const-string p0, "survey mode is not enabled"

    .line 218
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void

    :cond_36
    if-nez p1, :cond_40

    if-eqz v0, :cond_3f

    const-string p0, "feature is not enabled"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void

    .line 225
    :cond_40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "android.net.wifi"

    .line 226
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    .line 227
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_81

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_81

    const/4 p1, 0x0

    .line 229
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5e} :catch_a9

    const/16 v2, 0x7b

    const-string v3, "extra"

    if-ne p1, v2, :cond_68

    .line 230
    :try_start_64
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 232
    :cond_68
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

    :cond_81
    :goto_81
    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-eqz p1, :cond_90

    const-string p1, "value"

    .line 236
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    :cond_90
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_a8} :catch_a9

    goto :goto_c1

    :catch_a9
    move-exception p0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c1
    return-void
.end method

.method private sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V
    .registers 12

    const-string v0, "WcmBigDataManager"

    .line 252
    :try_start_2
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    if-eqz v1, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToContextFramework - features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extras : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", values : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2d
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->ENABLE_SURVEY_MODE:Z

    if-nez v2, :cond_39

    if-eqz v1, :cond_38

    const-string p0, "survey mode is not enabled"

    .line 255
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void

    :cond_39
    if-nez p1, :cond_43

    if-eqz v1, :cond_42

    const-string p0, "feature is not enabled"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void

    .line 262
    :cond_43
    array-length v1, p2

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    .line 263
    :goto_48
    array-length v4, p1

    if-ge v3, v4, :cond_b3

    .line 264
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    const-string v5, "app_id"

    const-string v6, "android.net.wifi"

    .line 265
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    aget-object v4, v1, v3

    const-string v5, "feature"

    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    aget-object v4, p2, v3

    if-eqz v4, :cond_9d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9d

    .line 268
    aget-object v4, p2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_ca

    const/16 v5, 0x7b

    const-string v6, "extra"

    if-ne v4, v5, :cond_80

    .line 269
    :try_start_78
    aget-object v4, v1, v3

    aget-object v5, p2, v3

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 271
    :cond_80
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

    .line 274
    :cond_9d
    :goto_9d
    aget-wide v4, p3, v3

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_b0

    .line 275
    aget-object v6, v1, v3

    const-string v7, "value"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 279
    :cond_b3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "data"

    .line 280
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.samsung.android.providers.context"

    .line 281
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_c9} :catch_ca

    goto :goto_e2

    :catch_ca
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occured on sendBroadcastToContextFramework:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e2
    return-void
.end method

.method private sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 290
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_47

    if-nez p1, :cond_7

    goto :goto_47

    .line 293
    :cond_7
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    if-eqz v0, :cond_29

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send H/W Parameters to HQM with appid - feature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logmaps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WcmBigDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v3, 0x0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    move-result-object v8

    .line 303
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mWifiDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    move-result-object v7

    .line 306
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v4, "WiFi"

    const-string v6, "sm"

    const-string v9, ""

    const-string v11, ""

    const-string v12, "android.net.wifi"

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_47
    :goto_47
    return-void
.end method


# virtual methods
.method public addOrUpdateFeatureAllValue(Ljava/lang/String;)Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateAllValue()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;D)Z
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValues(Ljava/util/HashMap;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public clearAllFeatures()Z
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

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

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    .line 139
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->resetData()V

    goto :goto_12

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public clearFeature(Ljava/lang/String;)Z
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->resetData()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getBigDataFeature(Ljava/lang/String;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertLog(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 146
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;J)V

    return-void
.end method

.method public insertLog(Ljava/lang/String;J)V
    .registers 6

    .line 150
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getJsonFormat()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getIsDqaEnabled()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 153
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 154
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getDqaFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 156
    :cond_40
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->sendHWParamToHQMwithAppId(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_43
    :goto_43
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->sendBroadcastToContextFramework(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_46
    return-void
.end method

.method public insertLog(Ljava/lang/String;Z)V
    .registers 9

    if-eqz p2, :cond_2e

    .line 165
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 166
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getJsonFormatArray()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_31

    .line 168
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 169
    array-length v2, p2

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v0, :cond_2a

    .line 172
    aput-object p1, v1, v3

    const-wide/16 v4, -0x1

    .line 173
    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 175
    :cond_2a
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_31

    .line 179
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public insertLog(Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 9

    .line 184
    sget-boolean v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->ENABLE_SURVEY_MODE:Z

    const-string v1, "WcmBigDataManager"

    if-nez v0, :cond_10

    .line 185
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    if-eqz p0, :cond_f

    const-string p0, "survey mode is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    if-nez p1, :cond_1c

    .line 189
    sget-boolean p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->DBG:Z

    if-eqz p0, :cond_1b

    const-string p0, "feature is not enabled"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void

    :cond_1c
    if-nez p2, :cond_1f

    return-void

    .line 195
    :cond_1f
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/String;

    .line 196
    array-length v2, p2

    new-array v2, v2, [J

    if-eqz p3, :cond_3f

    .line 199
    iget-object p3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->mBigDataFeatures:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_42

    const/4 p3, 0x0

    :goto_30
    if-ge p3, v0, :cond_3b

    .line 201
    aput-object p1, v1, p3

    const-wide/16 v3, -0x1

    .line 202
    aput-wide v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 204
    :cond_3b
    invoke-direct {p0, v1, p2, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->sendBroadcastToContextFramework([Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_42

    .line 208
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method
