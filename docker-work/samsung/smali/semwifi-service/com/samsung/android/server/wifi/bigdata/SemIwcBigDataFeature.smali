.class public abstract Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;
.super Ljava/lang/Object;
.source "SemIwcBigDataFeature.java"


# static fields
.field protected static DBG:Z


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDqaFeatureName:Ljava/lang/String;

.field private final mIsDqaEnabled:Z

.field private mJsonFormatArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mIsDqaEnabled:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDqaFeatureName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mJsonFormatArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mIsDqaEnabled:Z

    .line 45
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDqaFeatureName:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mJsonFormatArray:Ljava/util/ArrayList;

    return-void
.end method

.method protected static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 140
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


# virtual methods
.method public addCurrentDataToJsonFormatArray()V
    .registers 3

    .line 92
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    const-string v1, "addCurrentDataToJsonFormatArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mJsonFormatArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getJsonFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrUpdateAllValue()V
    .registers 1

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;D)V
    .registers 7

    .line 67
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_22
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;I)V
    .registers 6

    .line 57
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_22
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;J)V
    .registers 7

    .line 62
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_22
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 52
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValue(Ljava/lang/String;Z)V
    .registers 6

    .line 72
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_22
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addOrUpdateValues(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateValues - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->putValues(Ljava/util/HashMap;)V

    return-void
.end method

.method public getDqaFeatureName()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDqaFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDqaEnabled()Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mIsDqaEnabled:Z

    return p0
.end method

.method public abstract getJsonFormat()Ljava/lang/String;
.end method

.method public getJsonFormatArray()[Ljava/lang/String;
    .registers 3

    .line 97
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    const-string v1, "getJsonFormatArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mJsonFormatArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mJsonFormatArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 153
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
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

    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_19
    aget-object v5, v6, v2

    aget-object v6, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    goto :goto_e

    .line 170
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 145
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 148
    :cond_15
    monitor-exit v0

    return-object p2

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method protected putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_1f

    if-nez p2, :cond_5

    goto :goto_1f

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 120
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw p0

    .line 116
    :cond_1f
    :goto_1f
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_41

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param is null - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    return-void
.end method

.method protected putValues(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 129
    :try_start_3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    sget-boolean v3, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putValues - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_3f
    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 132
    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_4c
    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 136
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public resetData()V
    .registers 3

    .line 85
    sget-boolean v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    const-string v1, "resetData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 87
    :try_start_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 88
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method
