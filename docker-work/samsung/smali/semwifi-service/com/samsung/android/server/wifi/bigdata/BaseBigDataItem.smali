.class abstract Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.super Ljava/lang/Object;
.source "BaseBigDataItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "WiFi"

.field private static final DIV_MINUTE:J = 0xea60L

.field public static final HIT_TYPE_IMMEDIATELY:Ljava/lang/String; = "ph"

.field public static final HIT_TYPE_ONCE_A_DAY:Ljava/lang/String; = "sm"

.field private static final MAX_DURATION_MINUTES:I = 0xc350

.field public static final TYPE_CONTEXT_FRAMEWORK:I = 0x0

.field public static final TYPE_HQM_DQA:I = 0x2

.field public static final TYPE_HQM_DQA_PRIVATE:I = 0x3

.field public static final TYPE_HW_PARAM:I = 0x1


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureName:Ljava/lang/String;

.field protected mLogMessages:Z

.field protected mTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    return-void
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDurationTime()I
    .registers 9

    .line 157
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 158
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 159
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    cmp-long p0, v4, v2

    if-gez p0, :cond_1a

    return v1

    :cond_1a
    const-wide/32 v0, 0xc350

    cmp-long p0, v4, v0

    if-lez p0, :cond_25

    const p0, 0xc350

    return p0

    :cond_25
    long-to-int p0, v4

    return p0
.end method


# virtual methods
.method addOrUpdateValue(Ljava/lang/String;I)V
    .registers 3

    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearData()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 53
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method protected getArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_10

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_10

    :cond_9
    const-string p0, "\\s+"

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTime()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getFeatureName()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method getHitType()Ljava/lang/String;
    .registers 1

    const-string p0, "sm"

    return-object p0
.end method

.method abstract getJsonFormat()Ljava/lang/String;
.end method

.method getJsonFormatFor(I)Ljava/lang/String;
    .registers 2

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_e
    if-ge v4, v1, :cond_28

    aget-object v6, p1, v4

    if-nez v5, :cond_19

    const-string v5, ","

    .line 88
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_19
    aget-object v5, v6, v2

    aget-object v6, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_e

    .line 93
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_27

    const-string p1, "x"

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "\""

    const-string p2, "\'"

    .line 68
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 71
    :cond_27
    monitor-exit v0

    return-object p2

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method isAvailableLogging(I)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method abstract parseData(Ljava/lang/String;)Z
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method protected putValueAppend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    :cond_24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mExtraData:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method protected putValues([[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 10

    if-eqz p1, :cond_26

    if-nez p2, :cond_5

    goto :goto_26

    .line 128
    :cond_5
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_26

    aget-object v4, p1, v2

    if-eqz p3, :cond_19

    .line 130
    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValueAppend(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 132
    :cond_19
    aget-object v4, v4, v1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    move v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_26
    :goto_26
    return-void
.end method

.method protected resetTime()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    return-void
.end method

.method setLogVisible(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    return-void
.end method

.method protected updateTime()V
    .registers 3

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mTime:J

    return-void
.end method
