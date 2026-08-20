.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;
.super Ljava/lang/Object;
.source "SemQTableContainerBuilder.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IWCMonitor.QTableContainerBuilder"


# instance fields
.field private mJson:Ljava/lang/String;

.field private mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mJson:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method

.method private getApListFrom(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 188
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 189
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    :try_start_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "activityScore"

    .line 196
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v3, "firstAdded"

    .line 197
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v3, "lastAccessed"

    .line 198
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 200
    new-instance v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;-><init>(IJJ)V

    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_34} :catch_35

    goto :goto_9

    :catch_35
    move-exception v1

    .line 203
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    :cond_3a
    return-object v0
.end method

.method private getBssidPerSsidListFrom(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 162
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    :try_start_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 167
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 168
    :goto_1f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_23} :catch_3b

    if-ge v4, v5, :cond_37

    .line 170
    :try_start_25
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 171
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_30} :catch_33

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :catch_33
    move-exception v2

    .line 173
    :try_start_34
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :cond_37
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_9

    :catch_3b
    move-exception v1

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    :cond_40
    return-object v0
.end method


# virtual methods
.method public create()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
    .registers 11

    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mJson:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 43
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;-><init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-object v0

    .line 45
    :cond_c
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;-><init>()V

    .line 49
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_18} :catch_133

    :try_start_18
    const-string v2, "candidateApList"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 59
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListFrom(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->candidateApList:Ljava/util/Map;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_30

    :catch_25
    move-exception v2

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->candidateApList:Ljava/util/Map;

    :goto_30
    :try_start_30
    const-string v2, "coreApList"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListFrom(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->coreApList:Ljava/util/Map;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3c} :catch_3d

    goto :goto_48

    :catch_3d
    move-exception v2

    .line 70
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->coreApList:Ljava/util/Map;

    :goto_48
    :try_start_48
    const-string v2, "probationApList"

    .line 74
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 75
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListFrom(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->probationApList:Ljava/util/Map;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_54} :catch_55

    goto :goto_60

    :catch_55
    move-exception v2

    .line 78
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->probationApList:Ljava/util/Map;

    :goto_60
    :try_start_60
    const-string v2, "bssidPerSsidList"

    .line 82
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getBssidPerSsidListFrom(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->bssidPerSsidList:Ljava/util/Map;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6c} :catch_6d

    goto :goto_78

    :catch_6d
    move-exception v2

    .line 86
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->bssidPerSsidList:Ljava/util/Map;

    :goto_78
    const/4 v2, -0x1

    :try_start_79
    const-string v3, "forcedqai"

    .line 90
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->forcedqai:I
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_88

    :catch_82
    move-exception v3

    .line 93
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    iput v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->forcedqai:I

    :goto_88
    :try_start_88
    const-string v3, "qai"

    .line 97
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qai:I
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_90} :catch_91

    goto :goto_97

    :catch_91
    move-exception v3

    .line 100
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    iput v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qai:I

    :goto_97
    :try_start_97
    const-string v2, "version"

    .line 104
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->version:J
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a9

    :catch_a0
    move-exception v2

    .line 107
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/32 v2, 0x1343b86

    .line 108
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->version:J

    :goto_a9
    const/4 v2, 0x0

    :try_start_aa
    const-string v3, "qTableIndexList"

    .line 113
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "qTableList"

    .line 114
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v3, :cond_c6

    if-eqz v1, :cond_c6

    .line 118
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v4, v5, :cond_c6

    move-object v2, v3

    goto :goto_e1

    .line 119
    :cond_c6
    new-instance v1, Lorg/json/JSONException;

    const-string v3, "qTableList is corrupted"

    invoke-direct {v1, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_aa .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception v1

    .line 122
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableIndexList:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableList:Ljava/util/ArrayList;

    move-object v1, v2

    :goto_e1
    if-eqz v2, :cond_12c

    if-eqz v1, :cond_12c

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 132
    :goto_f0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_128

    .line 134
    :try_start_f6
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "bssid"

    .line 135
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance v7, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    invoke-direct {v7, v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 140
    new-instance v8, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;

    invoke-direct {v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;-><init>()V

    .line 141
    invoke-virtual {v8, v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->setIWCJsonObject(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    .line 142
    invoke-virtual {v6, v9}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->setIWCLogFile(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;

    .line 143
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->create()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v6

    .line 145
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_121} :catch_124

    add-int/lit8 v5, v5, 0x1

    goto :goto_f0

    :catch_124
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :cond_128
    iput-object v3, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableIndexList:Ljava/util/ArrayList;

    .line 153
    iput-object v4, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableList:Ljava/util/ArrayList;

    .line 156
    :cond_12c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->readResolve(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object p0

    return-object p0

    :catch_133
    move-exception v0

    .line 52
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;-><init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-object v0
.end method

.method getApListNode(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 239
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;

    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 245
    iget v3, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    const-string v4, "activityScore"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    const-string v5, "lastAccessed"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 247
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    const-string v1, "firstAdded"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_43
    return-object p0
.end method

.method getBssidPerSsidList(Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 255
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 260
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 262
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_28

    .line 265
    :cond_36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_40
    return-object p0
.end method

.method getIndexNodeList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_27

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    const-string v2, "bssid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    :cond_27
    return-object p0
.end method

.method getQTableList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 226
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_24

    .line 230
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;-><init>()V

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 232
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableBuilder;->toJo(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_10

    :cond_24
    return-object p0
.end method

.method public setIWCJson(Ljava/lang/String;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mJson:Ljava/lang/String;

    return-object p0
.end method

.method public setIWCLogFile(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->mLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-object p0
.end method

.method public toJsonString(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_5

    const-string p0, ""

    return-object p0

    .line 274
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->writeReplace()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;

    move-result-object p1

    .line 276
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->candidateApList:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListNode(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "candidateApList"

    .line 278
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->coreApList:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListNode(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "coreApList"

    .line 280
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->forcedqai:I

    const-string v2, "forcedqai"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->probationApList:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getApListNode(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "probationApList"

    .line 283
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->bssidPerSsidList:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getBssidPerSsidList(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "bssidPerSsidList"

    .line 285
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableIndexList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getIndexNodeList(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "qTableIndexList"

    .line 287
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainerBuilder;->getQTableList(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "qTableList"

    .line 289
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    iget p0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->qai:I

    const-string v1, "qai"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 291
    iget-wide p0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$SavedMembers;->version:J

    const-string v1, "version"

    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 293
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
