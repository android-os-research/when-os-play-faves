.class public Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportanceHistogram"
.end annotation


# static fields
.field public static final IMPORTANCE_NAMES:[Ljava/lang/String;

.field public static final NUM_IMPORTANCES:I = 0x6


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCount:[I

.field public final mCounterNames:[Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "none"

    const-string/jumbo v1, "min"

    const-string/jumbo v2, "low"

    const-string v3, "default"

    const-string/jumbo v4, "high"

    const-string/jumbo v5, "max"

    .line 741
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    const/4 p1, 0x6

    new-array v0, p1, [I

    .line 750
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    new-array v0, p1, [Ljava/lang/String;

    .line 751
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 752
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    const/4 p2, 0x0

    :goto_11
    if-ge p2, p1, :cond_2f

    .line 754
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    :cond_2f
    return-void
.end method


# virtual methods
.method public increment(I)V
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 760
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1b

    .line 765
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v1, v1, v0

    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    if-lez v1, :cond_18

    .line 767
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 780
    iget-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x6

    if-ge v1, v2, :cond_25

    .line 788
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    if-ge v1, v2, :cond_22

    const-string v2, ", "

    .line 790
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    const-string p0, "]"

    .line 793
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_f

    .line 774
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method
