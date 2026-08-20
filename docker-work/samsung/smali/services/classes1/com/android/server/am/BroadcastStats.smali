.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastStats$ViolationEntry;,
        Lcom/android/server/am/BroadcastStats$PackageEntry;,
        Lcom/android/server/am/BroadcastStats$ActionEntry;
    }
.end annotation


# static fields
.field public static final ACTIONS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mEndRealtime:J

.field public mEndUptime:J

.field public final mStartRealtime:J

.field public final mStartUptime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats$1;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    return-void
.end method


# virtual methods
.method public addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-nez v0, :cond_14

    .line 98
    new-instance v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_14
    iget-object p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    if-nez p0, :cond_28

    .line 103
    new-instance p0, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    invoke-direct {p0}, Lcom/android/server/am/BroadcastStats$ViolationEntry;-><init>()V

    .line 104
    iget-object p1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_28
    iget p1, p0, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    return-void
.end method

.method public addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 8

    .line 76
    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-nez v0, :cond_14

    .line 78
    new-instance v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_14
    iget p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    add-int/2addr p0, p3

    iput p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    .line 82
    iget p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    add-int/2addr p0, p4

    iput p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    .line 83
    iget-wide p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    add-long/2addr p0, p5

    iput-wide p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    .line 84
    iget-wide p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    cmp-long p0, p0, p5

    if-gez p0, :cond_2b

    .line 85
    iput-wide p5, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    .line 87
    :cond_2b
    iget-object p0, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastStats$PackageEntry;

    if-nez p0, :cond_3f

    .line 89
    new-instance p0, Lcom/android/server/am/BroadcastStats$PackageEntry;

    invoke-direct {p0}, Lcom/android/server/am/BroadcastStats$PackageEntry;-><init>()V

    .line 90
    iget-object p1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3f
    iget p1, p0, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    return-void
.end method

.method public dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    const-string v0, "broadcast-stats,1,"

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    .line 161
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_1b
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-wide v1, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :cond_2b
    iget-wide v3, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 165
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_39
    if-ltz v1, :cond_e8

    .line 166
    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-eqz p2, :cond_4f

    .line 167
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_e4

    :cond_4f
    const-string v3, "a,"

    .line 170
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_8a
    if-ltz v3, :cond_b3

    const-string/jumbo v4, "p,"

    .line 182
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v4, v4, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_8a

    .line 189
    :cond_b3
    iget-object v3, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_bb
    if-ltz v3, :cond_e4

    const-string/jumbo v4, "v,"

    .line 190
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v4, v2, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 193
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget v4, v4, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 195
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_bb

    :cond_e4
    :goto_e4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_39

    :cond_e8
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_13
    if-ltz v1, :cond_23

    .line 113
    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 115
    :cond_23
    sget-object p0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    const/4 v1, 0x0

    :goto_2e
    if-ltz p0, :cond_ed

    .line 117
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-eqz p3, :cond_42

    .line 118
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto/16 :goto_e9

    .line 122
    :cond_42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget-object v1, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    .line 124
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Number received: "

    .line 126
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v1, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ", skipped: "

    .line 128
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget v1, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Total dispatch time: "

    .line 131
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, ", max: "

    .line 133
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 136
    iget-object v1, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_87
    const-string v4, " times"

    const-string v5, ": "

    if-ltz v1, :cond_b6

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Package "

    .line 138
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastStats$PackageEntry;

    .line 142
    iget v5, v5, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 143
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_87

    .line 145
    :cond_b6
    iget-object v1, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_bd
    if-ltz v1, :cond_e8

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Bg Check Violation "

    .line 147
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v6, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    .line 151
    iget v6, v6, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 152
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_bd

    :cond_e8
    move v1, v2

    :goto_e9
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_2e

    :cond_ed
    return v1
.end method
