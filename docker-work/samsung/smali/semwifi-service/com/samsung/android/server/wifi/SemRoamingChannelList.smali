.class public Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.super Ljava/lang/Object;
.source "SemRoamingChannelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;,
        Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;
    }
.end annotation


# static fields
.field private static final HIT_ARRAY_LEN:I = 0x8

.field private static final JTAG_CURRENT_SLOT:Ljava/lang/String; = "current_slot"

.field private static final JTAG_FREQ:Ljava/lang/String; = "frequency"

.field private static final JTAG_HITMAP:Ljava/lang/String; = "hitmap"

.field private static final JTAG_HIT_TIME:Ljava/lang/String; = "hit_time"

.field private static final JTAG_LAST_UPDATED_TIME:Ljava/lang/String; = "last_updated_time"

.field private static final JTAG_NETWORK_KEY:Ljava/lang/String; = "network_Key"

.field private static final JTAG_REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field private static final JTAG_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field private static final TAG:Ljava/lang/String; = "SemRoamingChannelList"

.field private static final TIME_INTERVAL_PER_SLOT:J = 0xa4cb80L


# instance fields
.field private mAvailableChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelDataComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;

.field private mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTime:J

.field private mNetworkKey:Ljava/lang/String;

.field private mRemainingTime:J

.field private mSlotIdx:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic $r8$lambda$ZCP0leRFUtWvbUQe6vUk_WISk_Y(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->lambda$getFrequentlyUsedList$0(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;-><init>(Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mChannelDataComparator:Ljava/util/Comparator;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 116
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const-wide/16 p1, 0x0

    .line 117
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    const-wide/32 p1, 0xa4cb80

    .line 118
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    const/4 p1, 0x0

    .line 119
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 120
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    return-void
.end method

.method public static convertBand(I)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x7

    packed-switch p0, :pswitch_data_2c

    .line 187
    sget-object v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "Current band is [%d]. Use default band. "

    invoke-static {v3, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :pswitch_1c
    const/16 v0, 0x9

    goto :goto_2b

    :pswitch_1f
    const/16 v0, 0xe

    goto :goto_2b

    :pswitch_22
    const/16 v0, 0x8

    goto :goto_2b

    :pswitch_25
    const/16 v0, 0xf

    goto :goto_2b

    :pswitch_28
    const/4 v0, 0x6

    goto :goto_2b

    :goto_2a
    :pswitch_2a
    move v0, v1

    :goto_2b
    :pswitch_2b
    return v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_28
        :pswitch_2b
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static fromJson(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemRoamingChannelList;
    .registers 7

    .line 367
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    const-string v1, "network_Key"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    const-string p1, "last_updated_time"

    const-wide/16 v1, 0x0

    .line 368
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    const-string p1, "current_slot"

    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    const-string p1, "remain_time"

    .line 370
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    const-string p1, "hitmap"

    .line 371
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->setHitMap(Lorg/json/JSONArray;)V

    .line 373
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " RCL fromJson : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getHitMap()Lorg/json/JSONArray;
    .registers 4

    .line 317
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :cond_33
    return-object v0
.end method

.method private increaseHitCount(IJ)V
    .registers 7

    const/16 v0, 0x96c

    if-ge p1, v0, :cond_5

    return-void

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    if-nez v0, :cond_18

    .line 255
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;-><init>()V

    :cond_18
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_20

    .line 257
    iput-wide p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    .line 258
    :cond_20
    iget-object p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    iget p3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    aget v1, p2, p3

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, p3

    .line 259
    iget p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getFrequentlyUsedList$0(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;
    .registers 1

    .line 240
    iget p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private moveCurSlot()V
    .registers 8

    .line 268
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_d

    .line 269
    iput v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 272
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 273
    iget-object v3, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    iget v4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    aget v5, v3, v4

    .line 274
    iget v6, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    sub-int/2addr v6, v5

    iput v6, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 275
    aput v1, v3, v4

    goto :goto_17

    :cond_31
    return-void
.end method

.method private setHitMap(Lorg/json/JSONArray;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 333
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 334
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "frequency"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method


# virtual methods
.method public getFrequentlyUsedList(II)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 196
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    const-string p1, "getFrequentlyUsedChannel, but no data"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 200
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    if-nez v3, :cond_41

    goto :goto_2a

    .line 203
    :cond_41
    new-instance v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;-><init>(IJI)V

    .line 204
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 206
    :cond_64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mChannelDataComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v1, :cond_84

    .line 209
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v1, :cond_84

    .line 211
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    const-string p1, " WifiScanner is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_84
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_8d
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    if-eqz v2, :cond_97

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    .line 219
    :cond_97
    sget-object v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v5, " mCountryCode is changed [ %s > %s ]"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->convertBand(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiScanner;->getAvailableChannels(I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    .line 224
    :cond_bd
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d2

    .line 225
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    const-string p1, " There are no available channels."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 229
    :cond_d2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_d6
    if-lez p2, :cond_116

    add-int/lit8 p2, p2, -0x1

    .line 232
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    iget v2, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    goto :goto_d6

    .line 234
    :cond_ef
    sget-object v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " This is not a supported channel ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d6

    .line 238
    :cond_116
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$$ExternalSyntheticLambda0;-><init>()V

    .line 240
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 241
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getLastUpdatedTime()J
    .registers 3

    .line 131
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    return-wide v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "last_updated_time"

    .line 354
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "network_Key"

    .line 355
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "current_slot"

    .line 356
    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "remain_time"

    .line 357
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "hitmap"

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getHitMap()Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception p0

    .line 360
    sget-object v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in RCL toJson"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "HitChannelMap : "

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "\n"

    .line 343
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "freq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 346
    :cond_50
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 347
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-wide v4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x4

    aput-object v0, v3, p0

    const-string p0, "NetworkKey: %s, slotIdx: %d, LastUpdatedTime: %s, RemainTime: %d%n%s"

    .line 347
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(JJI)V
    .registers 11

    :goto_0
    const-wide/32 v0, 0xa4cb80

    cmp-long v2, p3, v0

    if-lez v2, :cond_c

    sub-long/2addr p3, v0

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    goto :goto_0

    .line 292
    :cond_c
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    cmp-long v4, v2, p3

    if-lez v4, :cond_16

    sub-long/2addr v2, p3

    .line 293
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    goto :goto_29

    :cond_16
    cmp-long v2, v2, p3

    if-gez v2, :cond_24

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    .line 296
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    sub-long/2addr v0, p3

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    goto :goto_29

    .line 298
    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    .line 299
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 302
    :goto_29
    invoke-direct {p0, p5, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->increaseHitCount(IJ)V

    .line 304
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    return-void
.end method

.method public updateHitCount(I)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 313
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->increaseHitCount(IJ)V

    return-void
.end method
