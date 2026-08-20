.class public Lcom/android/server/notification/edgelighting/EdgeLightingHistory;
.super Ljava/lang/Object;
.source "EdgeLightingHistory.java"


# static fields
.field public static final DEBUG:Z

.field public static final IS_DEV_DEBUG:Z

.field public static final MAX_EDGE_LIGHTING_HISTORY:I = 0x1e

.field public static final MAX_EVENT_HISTORY:I = 0x14

.field public static final MAX_HOST_HISTORY:I = 0x14

.field public static final MAX_LISTENER_HISTORY:I = 0x14

.field public static final MAX_REJECT_HISTORY:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "EdgeLightingHistory"

.field public static mInstance:Lcom/android/server/notification/edgelighting/EdgeLightingHistory;


# instance fields
.field public mEdgeLightingHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEventHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHostHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mListenerHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mRejectHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 18
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    .line 45
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "debug"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mHostHistory:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mListenerHistory:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mRejectHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;
    .registers 2

    const-class v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    if-eqz v1, :cond_8

    goto :goto_f

    :cond_8
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    invoke-direct {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;-><init>()V

    sput-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/notification/edgelighting/EdgeLightingHistory;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 140
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    const-string p3, "-EdgeLightingHistory"

    .line 141
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  [Host History] :"

    .line 142
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mHostHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_13
    :goto_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_36
    const-string p3, ""

    .line 148
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  [Listener History] :"

    .line 149
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mListenerHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_46
    :goto_46
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_46

    .line 155
    :cond_69
    sget-boolean p3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p3, :cond_71

    sget-boolean p3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz p3, :cond_10a

    :cond_71
    const-string p3, ""

    .line 156
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  [EL History] :"

    .line 157
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_81
    :goto_81
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_81

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_81

    :cond_a4
    const-string p3, ""

    .line 163
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  [Event History] :"

    .line 164
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b4
    :goto_b4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b4

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    :cond_d7
    const-string p3, ""

    .line 170
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "  [Reject History] :"

    .line 171
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mRejectHistory:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e7
    :goto_e7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_e7

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e7

    .line 178
    :cond_10a
    monitor-exit p1

    return-void

    :catchall_10c
    move-exception p0

    monitor-exit p1
    :try_end_10e
    .catchall {:try_start_3 .. :try_end_10e} :catchall_10c

    throw p0
.end method

.method public final toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 131
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 132
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x5

    .line 133
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 134
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    .line 135
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0xe

    .line 136
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const/4 p0, 0x6

    aput-object p1, v1, p0

    const-string p0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 131
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateEdgeLightingHistory(Ljava/lang/String;)V
    .registers 5

    .line 82
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-nez v0, :cond_9

    return-void

    .line 85
    :cond_9
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "EdgeLightingHistory"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEdgeLightingHistory log = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_30
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x1e

    if-le p1, v1, :cond_41

    .line 92
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 94
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw p0
.end method

.method public updateEventHistory(Ljava/lang/String;)V
    .registers 5

    .line 98
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-nez v0, :cond_9

    return-void

    .line 101
    :cond_9
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "EdgeLightingHistory"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEventHistory log = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_30
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_41

    .line 108
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mEventHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 110
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw p0
.end method

.method public updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 60
    :try_start_17
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mHostHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_20
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mHostHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x14

    if-le p2, v0, :cond_31

    .line 62
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mHostHistory:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 64
    :cond_31
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 74
    :try_start_17
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mListenerHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_20
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mListenerHistory:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x14

    if-le p2, v0, :cond_31

    .line 76
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mListenerHistory:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20

    .line 78
    :cond_31
    monitor-exit p1

    return-void

    :catchall_33
    move-exception p0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public updateRejectHistory(Ljava/lang/String;)V
    .registers 5

    .line 114
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-nez v0, :cond_9

    return-void

    .line 117
    :cond_9
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "EdgeLightingHistory"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRejectHistory log = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mRejectHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_30
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mRejectHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x1e

    if-le p1, v1, :cond_41

    .line 124
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->mRejectHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30

    .line 126
    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_43

    throw p0
.end method
