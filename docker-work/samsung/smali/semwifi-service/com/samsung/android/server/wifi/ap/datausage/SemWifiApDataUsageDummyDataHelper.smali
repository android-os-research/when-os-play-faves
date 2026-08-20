.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;
.super Ljava/lang/Object;
.source "SemWifiApDataUsageDummyDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;
    }
.end annotation


# static fields
.field private static final MAX_DATA_USAGE_IN_BYTES:J = 0x3b9aca00L

.field private static final MAX_TIME_USAGE_IN_MILLI:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "SemWifiApDataUsageDummyDataHelper"

.field private static final clientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final firstHalf:[Ljava/lang/String;

.field private static mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

.field private static mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

.field private static final mac:[Ljava/lang/String;

.field private static rand:Ljava/util/Random;

.field private static final secondHalf:[Ljava/lang/String;

.field private static final top3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateTodayRandomData(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;IIIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->generateTodayRandomData(IIIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSemWifiApClientUsageSettingDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSemWifiApDataUsageDbHelper()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmSemWifiApClientUsageSettingDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSemWifiApDataUsageDbHelper(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 17

    const-string v0, "Galaxy-S22"

    const-string v1, "Ramesh"

    const-string v2, "Raj"

    const-string v3, "Manoj"

    const-string v4, "Galaxy-S24"

    const-string v5, "Mayank"

    const-string v6, "Farooq"

    const-string v7, "Galaxy-Fold"

    const-string v8, "Seshu"

    .line 24
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->firstHalf:[Ljava/lang/String;

    const-string v1, "-65464"

    const-string v2, "-8569"

    const-string v3, "-Flip"

    const-string v4, "-Fold"

    const-string v5, "-Phone"

    const-string v6, "-Tablet"

    const-string v7, "-Device"

    const-string v8, "-personal"

    const-string v9, "-secondary"

    .line 25
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->secondHalf:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "a"

    const-string v3, "1"

    const-string v4, "b"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "c"

    const-string v10, "6"

    const-string v11, "d"

    const-string v12, "7"

    const-string v13, "e"

    const-string v14, "8"

    const-string v15, "9"

    const-string v16, "f"

    .line 26
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mac:[Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->top3:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->clientMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApDataUsageDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;

    .line 35
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mSemWifiApClientUsageSettingDbHelper:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private generateRandomClientData()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;
    .registers 4

    .line 90
    new-instance v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper-IA;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->generateRandomMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getRandomClientName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceName:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getRandomDataUsageInBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getRandomTimeInMilliSecs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->timeUsage:J

    .line 95
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getRandomClientDataLimitGreaterThanOrEqualToGivenDataUsage(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataLimit:J

    .line 96
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->timeUsage:J

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getRandomClientTimeLimitGreaterThanOrEqualToGivenDataUsage(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->timeLimit:J

    .line 97
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3a

    const/4 p0, 0x0

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x1

    :goto_3b
    iput p0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->isSharingPause:I

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device MAC = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " device name :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SemWifiApDataUsageDummyDataHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private generateRandomJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ">;)J"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->generateRandomClientData()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->clientMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 155
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getDataUsageJsonObjectForClient(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getClientSettingDBJsonObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 160
    :try_start_1b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    iget-object p1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p1

    .line 163
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 165
    :goto_2a
    invoke-direct {p0, p4, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->insertIListInSortedOrder(Ljava/util/List;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;)V

    .line 166
    iget-wide p0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    return-wide p0

    :cond_30
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private generateRandomMacAddress()Ljava/lang/String;
    .registers 6

    .line 59
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x5

    if-ge v0, v1, :cond_37

    .line 61
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mac:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 62
    sget-object v3, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 65
    :cond_37
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->mac:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 66
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateTodayRandomData(IIIILcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;)V
    .registers 16

    .line 194
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->top3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    invoke-virtual {p6, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->getDate(III)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_1c
    if-ge v4, p4, :cond_28

    .line 202
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->top3:Ljava/util/List;

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->generateRandomJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v2

    add-long/2addr v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 205
    :cond_28
    sget-object p4, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->top3:Ljava/util/List;

    invoke-direct {p0, p4, v5, v6}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->getTop3String(Ljava/util/List;J)Ljava/lang/String;

    move-result-object v8

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "V1.0:TOP3:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p4, "SemWifiApDataUsageDummyDataHelper"

    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    .line 207
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDbHelper;->insertOrUpdateFullDetailsOnGivenDate(IIIJLorg/json/JSONObject;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p6, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientUsageSettingDbHelper;->updateClientSettingDbUsingJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method private getClientSettingDBJsonObject(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .line 103
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "device_mac"

    .line 105
    iget-object v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceMac:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_name"

    .line 106
    iget-object v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_data_limit"

    .line 107
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataLimit:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "device_time_limit"

    .line 108
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->timeLimit:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "device_is_sharing_pause_by_user"

    .line 109
    iget p1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->isSharingPause:I

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "device_recent_setting_updated_date"

    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_32
    return-object p0
.end method

.method private getDataUsageJsonObjectForClient(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;)Lorg/json/JSONObject;
    .registers 5

    .line 118
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "name"

    .line 120
    iget-object v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data_usage"

    .line 121
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "time"

    .line 122
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->timeUsage:J

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 124
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-object p0
.end method

.method private getRandomClientDataLimitGreaterThanOrEqualToGivenDataUsage(J)J
    .registers 5

    .line 82
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const-wide/32 v0, 0x3b9aca00

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private getRandomClientName()Ljava/lang/String;
    .registers 5

    .line 53
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->firstHalf:[Ljava/lang/String;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 54
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->rand:Ljava/util/Random;

    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;->secondHalf:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, v0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRandomClientTimeLimitGreaterThanOrEqualToGivenDataUsage(J)J
    .registers 5

    .line 86
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private getRandomDataUsageInBytes()J
    .registers 5

    .line 73
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x3b9aca00

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRandomTimeInMilliSecs()J
    .registers 5

    .line 78
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTop3String(Ljava/util/List;J)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 174
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 176
    :goto_b
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_3d

    .line 177
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-wide v2, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    sub-long/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_59

    add-int/lit8 v1, v1, 0x1

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " Others\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private insertIListInSortedOrder(Ljava/util/List;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ">;",
            "Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 133
    :goto_6
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 134
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;

    .line 135
    iget-wide v3, p2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    iget-wide v5, v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$ClientDetailsHelper;->dataUsage:J

    cmp-long v2, v3, v5

    if-ltz v2, :cond_1f

    .line 137
    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_22

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    :goto_22
    if-nez v0, :cond_27

    .line 144
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_32

    const/4 p0, 0x3

    .line 148
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_32
    return-void
.end method


# virtual methods
.method public deleteAllData()V
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$2;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public generate6MonthsData(I)V
    .registers 4

    .line 214
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper$1;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageDummyDataHelper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
