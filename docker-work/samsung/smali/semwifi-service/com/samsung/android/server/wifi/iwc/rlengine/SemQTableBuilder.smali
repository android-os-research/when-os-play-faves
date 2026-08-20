.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;
.super Ljava/lang/Object;
.source "SemQTableBuilder.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IWCMonitor.QTableBuilder"


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;

.field private mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method

.method private getEventBufferArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1b

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_1b
    return-object p0
.end method

.method private getQtableArray([[FII)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, p2, :cond_25

    .line 132
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v3, v0

    :goto_f
    if-ge v3, p3, :cond_1f

    .line 134
    aget-object v4, p1, v1

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 136
    :cond_1f
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    return-object p0
.end method


# virtual methods
.method public create()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->PARAM:[F

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;-><init>([FLcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-object v0

    .line 39
    :cond_e
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "STEADSTATETHRESHOLD"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->STEADSTATETHRESHOLD:I

    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "discountFactor"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->discountFactor:F

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBuffer:Ljava/util/ArrayList;

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "eventBuffer"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    move v3, v2

    .line 46
    :goto_3b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 47
    iget-object v4, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 51
    :cond_51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "eventBufferLimit"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBufferLimit:I

    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "firstIndexToggling"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->firstIndexToggling:I

    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "isSteadyState"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->isSteadyState:Z

    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "lastAction"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastAction:I

    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "lastEvent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "lastState"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastState:I

    .line 57
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "lastUpdateTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastUpdateTime:J

    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "learningRate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->learningRate:F

    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "mLastSNS"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->mLastSNS:I

    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "movedFirstIndexToggling"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->movedFirstIndexToggling:I

    .line 61
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "numActions"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "numStates"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numStates:I

    .line 63
    iget v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v1, v4, v2

    const-class v1, F

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->qTable:[[F

    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v3, "qTable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_111

    move v3, v2

    .line 67
    :goto_ed
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_111

    .line 68
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_10e

    move v5, v2

    .line 71
    :goto_fa
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10e

    .line 72
    iget-object v6, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->qTable:[[F

    aget-object v6, v6, v3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_fa

    :cond_10e
    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    .line 80
    :cond_111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->state:I

    .line 81
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "steakTogglingCnt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->steakTogglingCnt:I

    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    const-string v2, "zeroIndexReached"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->zeroIndexReached:I

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->readResolve(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object p0

    return-object p0
.end method

.method public setIWCJsonObject(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mJsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setIWCLogFile(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-object p0
.end method

.method public toJo(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 92
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->writeReplace()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;

    move-result-object p1

    .line 94
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->STEADSTATETHRESHOLD:I

    const-string v2, "STEADSTATETHRESHOLD"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->discountFactor:F

    float-to-double v1, v1

    const-string v3, "discountFactor"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBuffer:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->getEventBufferArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "eventBuffer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBufferLimit:I

    const-string v2, "eventBufferLimit"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->firstIndexToggling:I

    const-string v2, "firstIndexToggling"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    iget-boolean v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->isSteadyState:Z

    const-string v2, "isSteadyState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastAction:I

    const-string v2, "lastAction"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const-string v2, "lastEvent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastState:I

    const-string v2, "lastState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    iget-wide v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastUpdateTime:J

    const-string v3, "lastUpdateTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->learningRate:F

    float-to-double v1, v1

    const-string v3, "learningRate"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 105
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->mLastSNS:I

    const-string v2, "mLastSNS"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->movedFirstIndexToggling:I

    const-string v2, "movedFirstIndexToggling"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    const-string v2, "numActions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numStates:I

    const-string v2, "numStates"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->qTable:[[F

    iget v2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numStates:I

    iget v3, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->getQtableArray([[FII)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "qTable"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget p0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->state:I

    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    iget p0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->steakTogglingCnt:I

    const-string v1, "steakTogglingCnt"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    iget p0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->zeroIndexReached:I

    const-string p1, "zeroIndexReached"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
