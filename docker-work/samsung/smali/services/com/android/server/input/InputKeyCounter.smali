.class public Lcom/android/server/input/InputKeyCounter;
.super Ljava/lang/Object;
.source "InputKeyCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputKeyCounter$HwKeyCount;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final SHIP_BUILD:Z

.field public static final TAG:Ljava/lang/String; = "InputKeyCounter"


# instance fields
.field public final mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 40
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    .line 41
    sput-boolean v0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$HwKeyCount-IA;)V

    iput-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    return-void
.end method


# virtual methods
.method public getAllKeyCount()J
    .registers 3

    .line 53
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {p0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getAllKeyCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public increaseCount(I)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(I)V

    return-void
.end method

.method public kickOldies(Landroid/content/Context;)V
    .registers 13

    const-string v0, ""

    .line 110
    sget-boolean v1, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    const-string v2, "InputKeyCounter"

    if-eqz v1, :cond_e

    const-string/jumbo v1, "read old data!"

    .line 111
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo v1, "persist.service.bgkeycount"

    const-string/jumbo v3, "null"

    .line 115
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>(Lcom/android/server/input/InputKeyCounter;Lcom/android/server/input/InputKeyCounter$HwKeyCount-IA;)V

    .line 119
    :try_start_24
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_27
    if-ge v7, v5, :cond_70

    aget-object v8, v3, v7

    .line 120
    sget-boolean v9, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz v9, :cond_44

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read old saved keycount strings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const-string v9, ","

    .line 124
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    array-length v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_55

    const-string/jumbo v3, "throw up the data!"

    .line 126
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_55
    aget-object v9, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 130
    aget-object v8, v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 131
    invoke-virtual {v4, v9, v8}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(II)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_65} :catch_68

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :catch_68
    const-string v3, "NumberFormatException, throw up the data!"

    .line 135
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_70
    invoke-virtual {v4}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 142
    invoke-virtual {p0, p1, v2}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 145
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCount()V
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {p0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 65
    :cond_50
    sget-boolean p0, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz p0, :cond_6b

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveCount - concat data :"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "InputKeyCounter"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const-string/jumbo p0, "persist.service.bgkeycount"

    .line 68
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBroadcastKeyCount(Landroid/content/Context;)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v0}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->clearKeyCount()V

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public final sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string p0, "InputKeyCounter"

    if-eqz p2, :cond_9e

    .line 79
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_9e

    .line 84
    :cond_c
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 85
    new-array v1, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v0, :cond_4b

    .line 87
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v3

    const-string v5, "app_id"

    const-string v6, "com.android.server.input"

    .line 88
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    aget-object v4, v1, v3

    const-string v5, "feature"

    const-string v6, "BKCS"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    aget-object v4, v1, v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "extra"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    aget-object v4, v1, v3

    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string/jumbo v6, "value"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 94
    :cond_4b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    .line 97
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    sget-boolean p1, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    if-eqz p1, :cond_9d

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sendbroadcast keycount - lenght: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7e
    if-ge v2, v0, :cond_9d

    .line 103
    aget-object p1, v1, v2

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sendbroadcast keycount - cvs: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_9d
    return-void

    :cond_9e
    :goto_9e
    const-string p1, "No map object"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
