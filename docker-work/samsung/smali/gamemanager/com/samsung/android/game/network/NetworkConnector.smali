.class public Lcom/samsung/android/game/network/NetworkConnector;
.super Ljava/lang/Object;
.source "NetworkConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://gos-api.gos-gsp.io"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PATH_VALUE_PACKAGES:Ljava/lang/String; = "/v4/packages"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRequestHeader:Lcom/samsung/android/game/network/RequestHeader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/samsung/android/game/network/NetworkConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/game/network/NetworkConnector;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/samsung/android/game/network/RequestHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/game/network/RequestHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/network/NetworkConnector;->mRequestHeader:Lcom/samsung/android/game/network/RequestHeader;

    .line 38
    sget-object v1, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestHeader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/game/network/RequestHeader;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/network/NetworkConnector;)Lcom/samsung/android/game/network/RequestHeader;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/network/NetworkConnector;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/game/network/NetworkConnector;->mRequestHeader:Lcom/samsung/android/game/network/RequestHeader;

    return-object v0
.end method

.method private isMainLooper()Z
    .registers 3

    .line 254
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public getCategoryFromServer(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 9
    .param p1, "packageNames"    # Ljava/lang/String;

    .line 77
    if-nez p1, :cond_b

    .line 78
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCategoryFromServer(), packageNames null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_b
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCategoryFromServer(), packageNames : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v2, "request":Ljava/lang/StringBuilder;
    const-string v3, "/v4/packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v3, "?package_names="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://gos-api.gos-gsp.io"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/game/network/NetworkConnector;->isMainLooper()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 94
    new-instance v4, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;-><init>(Lcom/samsung/android/game/network/NetworkConnector;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "response":Ljava/lang/String;
    goto :goto_6f

    .line 96
    .end local v4    # "response":Ljava/lang/String;
    :cond_66
    new-instance v4, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;-><init>(Lcom/samsung/android/game/network/NetworkConnector;Ljava/lang/String;)V

    # invokes: Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->sendGet()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->access$000(Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4    # "response":Ljava/lang/String;
    :goto_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCategoryFromServer(), request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v4, :cond_9c

    .line 102
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .local v0, "jsonArray":Lorg/json/JSONArray;
    goto :goto_a1

    .line 104
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_9c
    const-string v5, "getCategoryFromServer(),  response is null !! "

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_a1} :catch_a2

    .line 108
    .end local v2    # "request":Ljava/lang/StringBuilder;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    :goto_a1
    goto :goto_a8

    .line 106
    :catch_a2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a8
    return-object v1
.end method

.method public getPackageNamesForQuery(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_b

    .line 116
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPackageNamesForQuery(), packageNameList is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "pkgNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "maxPkgNamesStringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 124
    .local v2, "appendCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 125
    .local v3, "lastIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v4, "log":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-gt v5, v3, :cond_97

    .line 127
    const/4 v6, 0x1

    if-eq v5, v3, :cond_36

    const/16 v7, 0x64

    if-ge v2, v7, :cond_36

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/16 v8, 0xdac

    if-le v7, v8, :cond_7f

    .line 130
    :cond_36
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 130
    const-string v9, "packageCount: %d, countSum: %d, length: %,dbyte, packageNames: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    if-ne v5, v3, :cond_78

    .line 136
    goto :goto_97

    .line 140
    :cond_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v7

    .line 141
    const/4 v2, 0x0

    .line 144
    :cond_7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_8a

    .line 145
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_8a
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/2addr v2, v6

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 151
    .end local v5    # "i":I
    :cond_97
    :goto_97
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b9

    .line 152
    sget-object v5, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageNamesForQuery(), log:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_b9
    return-object v0
.end method

.method public getSingleCategory(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 42
    if-nez p1, :cond_b

    .line 43
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSingleCategory(), packageName is null"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_b
    sget-object v0, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleCategory(), packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "responseJson":Lorg/json/JSONObject;
    :try_start_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v2, "request":Ljava/lang/StringBuilder;
    const-string v3, "/v4/packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://gos-api.gos-gsp.io"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/game/network/NetworkConnector;->isMainLooper()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 58
    new-instance v4, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;-><init>(Lcom/samsung/android/game/network/NetworkConnector;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "response":Ljava/lang/String;
    goto :goto_6c

    .line 60
    .end local v4    # "response":Ljava/lang/String;
    :cond_63
    new-instance v4, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;-><init>(Lcom/samsung/android/game/network/NetworkConnector;Ljava/lang/String;)V

    # invokes: Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->sendGet()Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;->access$000(Lcom/samsung/android/game/network/NetworkConnector$NetworkTask;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .restart local v4    # "response":Ljava/lang/String;
    :goto_6c
    if-eqz v4, :cond_74

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 67
    :cond_74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSingleCategory(), request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_98} :catch_99

    .line 70
    .end local v2    # "request":Ljava/lang/StringBuilder;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    goto :goto_9f

    .line 68
    :catch_99
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9f
    return-object v1
.end method

.method public isNetworkConnected()Z
    .registers 6

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "connected":Z
    iget-object v1, p0, Lcom/samsung/android/game/network/NetworkConnector;->mContext:Landroid/content/Context;

    .line 261
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 262
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1d

    .line 263
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 264
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    move v0, v3

    .line 267
    .end local v2    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_1d
    sget-object v2, Lcom/samsung/android/game/network/NetworkConnector;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkConnected(), Network is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2f

    const-string v4, "connected"

    goto :goto_31

    :cond_2f
    const-string v4, "NOT connected"

    :goto_31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return v0
.end method
