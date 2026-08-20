.class Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;
.super Ljava/lang/Object;
.source "SemRoamingChannelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HitArray"
.end annotation


# instance fields
.field hitTime:J

.field timeSlot:[I

.field totalCount:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 71
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;
    .registers 6

    .line 101
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;-><init>()V

    const-string v1, "hit_time"

    const-wide/16 v2, 0x0

    .line 103
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    const-string v1, "total_count"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    move v1, v2

    :goto_19
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2c

    .line 106
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2c
    return-object v0
.end method


# virtual methods
.method public toJson(I)Lorg/json/JSONObject;
    .registers 5

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "frequency"

    .line 88
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "hit_time"

    .line 89
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "total_count"

    .line 90
    iget v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p1, 0x0

    :goto_19
    const/16 v1, 0x8

    if-ge p1, v1, :cond_48

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_2b

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :catch_2b
    move-exception p0

    .line 95
    invoke-static {}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in HitArray toJson"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Hit per slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_21
    const/16 v2, 0x8

    if-ge v1, v2, :cond_48

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 80
    :cond_48
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
