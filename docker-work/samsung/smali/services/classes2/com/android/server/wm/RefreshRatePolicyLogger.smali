.class public Lcom/android/server/wm/RefreshRatePolicyLogger;
.super Ljava/lang/Object;
.source "RefreshRatePolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;
    }
.end annotation


# static fields
.field public static final HISTORY_LOG_MAX_COUNT:I = 0xf

.field public static final INVALID:I = -0x1

.field public static final REFRESH_RATE_HISTORY_MAX_TYPE:I = 0x2

.field public static final REFRESH_RATE_HISTORY_MIN_TYPE:I = 0x1

.field public static final REFRESH_RATE_HISTORY_MODE_TYPE:I = 0x0

.field public static final REFRESH_RATE_HISTORY_TYPE_SIZE:I = 0x3


# instance fields
.field public mRefreshRateHistories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_21

    .line 43
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    const/16 v3, 0xf

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RefreshRatePolicyLogger;->refreshRateHistoryTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;-><init>(Lcom/android/server/wm/RefreshRatePolicyLogger;ILjava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 112
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "RefreshRatePolicy History"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<< PreferredModeHistory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->-$$Nest$fgetmTag(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->-$$Nest$fgetmHistory(Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;)Lcom/samsung/android/core/SystemHistory;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/core/SystemHistory;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    :cond_3f
    return-void
.end method

.method public getRefreshRateHistory(I)Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    return-object p0
.end method

.method public refreshRateHistoryTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_20

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1a

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "Max"

    return-object p0

    :cond_1d
    const-string p0, "Min"

    return-object p0

    :cond_20
    const-string p0, "ModeId"

    return-object p0
.end method

.method public update(Lcom/android/server/wm/WindowState;IFI)V
    .registers 5

    .line 49
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    if-eqz p0, :cond_d

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->update(Lcom/android/server/wm/WindowState;IF)V

    :cond_d
    return-void
.end method
