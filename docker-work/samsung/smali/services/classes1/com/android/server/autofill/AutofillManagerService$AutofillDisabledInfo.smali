.class public final Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutofillDisabledInfo"
.end annotation


# instance fields
.field public mDisabledActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mDisabledApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16

    .line 1138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Disabled apps: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const/16 v1, 0xa

    const-string v2, ": "

    const-string v3, ". "

    const-string v4, "N/A"

    const/4 v5, 0x0

    if-nez v0, :cond_19

    .line 1140
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f

    .line 1142
    :cond_19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1143
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move v9, v5

    :goto_2a
    if-ge v9, v0, :cond_5c

    .line 1147
    iget-object v10, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1148
    iget-object v11, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1149
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v11, v7

    .line 1151
    invoke-static {v11, v12, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1152
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    .line 1154
    :cond_5c
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1157
    :goto_5f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Disabled activities: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_6f

    .line 1159
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b4

    .line 1161
    :cond_6f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1162
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :goto_7f
    if-ge v5, v0, :cond_b1

    .line 1166
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 1167
    iget-object v9, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v6

    .line 1170
    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1171
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 1173
    :cond_b1
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_b4
    return-void
.end method

.method public getAppDisabledActivitiesLocked(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 1084
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_3f

    .line 1087
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1088
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    if-nez v1, :cond_25

    .line 1090
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1092
    :cond_25
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1093
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3f
    return-object v1
.end method

.method public getAppDisabledExpirationLocked(Ljava/lang/String;)J
    .registers 4

    .line 1075
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_7

    return-wide v0

    .line 1078
    :cond_7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_13

    .line 1079
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_13
    return-wide v0
.end method

.method public isAutofillDisabledLocked(Landroid/content/ComponentName;)Z
    .registers 13

    .line 1104
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    const-string v1, " from disabled list"

    const-string v2, "Removing "

    const-string v3, "AutofillManagerService"

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_47

    .line 1105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1106
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_48

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-ltz v0, :cond_24

    return v4

    .line 1110
    :cond_24
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_41

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_41
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_47
    move-wide v7, v5

    .line 1119
    :cond_48
    :goto_48
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1120
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    const/4 v9, 0x0

    if-nez v0, :cond_52

    return v9

    .line 1122
    :cond_52
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_5b

    return v9

    :cond_5b
    cmp-long v5, v7, v5

    if-nez v5, :cond_63

    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1129
    :cond_63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-ltz v0, :cond_6c

    return v4

    .line 1132
    :cond_6c
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_85

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_85
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v9
.end method

.method public putDisableActivityLocked(Landroid/content/ComponentName;J)V
    .registers 6

    .line 1068
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 1069
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    .line 1071
    :cond_c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledActivities:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDisableAppsLocked(Ljava/lang/String;J)V
    .registers 6

    .line 1061
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    .line 1062
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    .line 1064
    :cond_c
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$AutofillDisabledInfo;->mDisabledApps:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
