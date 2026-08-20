.class public Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "ZenLog.java"


# static fields
.field public static final DEBUG:Z

.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static final MSGS:[Ljava/lang/String;

.field public static final SIZE:I

.field public static final TAG:Ljava/lang/String; = "ZenLog"

.field public static final TIMES:[J

.field public static final TYPES:[I

.field public static final TYPE_ALLOW_DISABLE:I = 0x2

.field public static final TYPE_CONFIG:I = 0xb

.field public static final TYPE_DISABLE_EFFECTS:I = 0xd

.field public static final TYPE_DOWNTIME:I = 0x5

.field public static final TYPE_EXIT_CONDITION:I = 0x8

.field public static final TYPE_INTERCEPTED:I = 0x1

.field public static final TYPE_LISTENER_HINTS_CHANGED:I = 0xf

.field public static final TYPE_MATCHES_CALL_FILTER:I = 0x12

.field public static final TYPE_MATCHES_CONTACTS:I = 0x13

.field public static final TYPE_NOT_INTERCEPTED:I = 0xc

.field public static final TYPE_SET_CONSOLIDATED_ZEN_POLICY:I = 0x11

.field public static final TYPE_SET_NOTIFICATION_POLICY:I = 0x10

.field public static final TYPE_SET_RINGER_MODE_EXTERNAL:I = 0x3

.field public static final TYPE_SET_RINGER_MODE_INTERNAL:I = 0x4

.field public static final TYPE_SET_ZEN_MODE:I = 0x6

.field public static final TYPE_SUBSCRIBE:I = 0x9

.field public static final TYPE_SUPPRESSOR_CHANGED:I = 0xe

.field public static final TYPE_UNSUBSCRIBE:I = 0xa

.field public static final TYPE_UPDATE_ZEN_MODE:I = 0x7

.field public static sNext:I

.field public static sSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 42
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xc8

    goto :goto_b

    :cond_9
    const/16 v0, 0x64

    .line 44
    :goto_b
    sput v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    .line 46
    new-array v1, v0, [J

    sput-object v1, Lcom/android/server/notification/ZenLog;->TIMES:[J

    .line 47
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/notification/ZenLog;->TYPES:[I

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(ILjava/lang/String;)V
    .registers 7

    .line 268
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v0

    .line 269
    :try_start_3
    sget-object v1, Lcom/android/server/notification/ZenLog;->TIMES:[J

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 270
    sget-object v1, Lcom/android/server/notification/ZenLog;->TYPES:[I

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    aput p0, v1, v2

    .line 271
    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 272
    sget v1, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr v2, v1

    sput v2, Lcom/android/server/notification/ZenLog;->sNext:I

    .line 273
    sget v2, Lcom/android/server/notification/ZenLog;->sSize:I

    if-ge v2, v1, :cond_24

    add-int/lit8 v2, v2, 0x1

    .line 274
    sput v2, Lcom/android/server/notification/ZenLog;->sSize:I

    .line 276
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_47

    .line 277
    sget-boolean v0, Lcom/android/server/notification/ZenLog;->DEBUG:Z

    if-eqz v0, :cond_46

    const-string v0, "ZenLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    :catchall_47
    move-exception p0

    .line 276
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public static componentListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 257
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    if-lez v1, :cond_13

    const-string v2, ", "

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v2}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 264
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static componentToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 251
    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 281
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v0

    .line 282
    :try_start_3
    sget v1, Lcom/android/server/notification/ZenLog;->sNext:I

    sget v2, Lcom/android/server/notification/ZenLog;->sSize:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    const/4 v2, 0x0

    .line 283
    :goto_d
    sget v3, Lcom/android/server/notification/ZenLog;->sSize:I

    if-ge v2, v3, :cond_4a

    add-int v3, v1, v2

    .line 284
    sget v4, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr v3, v4

    .line 285
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    sget-object v4, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-object v6, Lcom/android/server/notification/ZenLog;->TIMES:[J

    aget-wide v6, v6, v3

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x20

    .line 287
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 288
    sget-object v4, Lcom/android/server/notification/ZenLog;->TYPES:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": "

    .line 289
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    sget-object v4, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 292
    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public static hintsToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    .line 246
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "disable_call_effects"

    return-object p0

    :cond_13
    const-string p0, "disable_notification_effects"

    return-object p0

    :cond_16
    const-string p0, "disable_effects"

    return-object p0

    :cond_19
    const-string/jumbo p0, "none"

    return-object p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_c
    const-string/jumbo p0, "normal"

    return-object p0

    :cond_10
    const-string/jumbo p0, "vibrate"

    return-object p0

    :cond_14
    const-string/jumbo p0, "silent"

    return-object p0
.end method

.method public static subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_6

    const-string/jumbo p0, "no provider"

    goto :goto_10

    :cond_6
    if-eqz p1, :cond_d

    .line 180
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_d
    const-string/jumbo p0, "ok"

    :goto_10
    return-object p0
.end method

.method public static traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 6

    .line 146
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$Diff;->isEmpty()Z

    move-result v0

    const/16 v1, 0xb

    if-eqz v0, :cond_21

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no changes"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    goto :goto_4a

    .line 150
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_35

    .line 151
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public static traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceDowntimeAutotrigger(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x5

    .line 104
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;J)V"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suppressed effects:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->componentListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xe

    .line 162
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_9

    .line 76
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceListenerHintsChanged(III)V
    .registers 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",listeners="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xf

    .line 168
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceMatchContactFilter(Landroid/os/Bundle;Ljava/lang/Float;)V
    .registers 4

    const/16 v0, 0x13

    if-nez p0, :cond_a

    const-string p0, "extra is null"

    .line 186
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    goto :goto_25

    .line 188
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", contactAffinity: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static traceMatchesCallFilter(ZLjava/lang/String;)V
    .registers 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", reason="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x12

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_7

    .line 81
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0xc

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x11

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .registers 5

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " targetSdk="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " NotificationPolicy="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    .line 131
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Zen Policy Changed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenLog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static traceSetRingerModeExternal(IILjava/lang/String;II)V
    .registers 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",e:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",i:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    .line 87
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetRingerModeInternal(IILjava/lang/String;II)V
    .registers 6

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",i:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",e:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    .line 96
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static traceUpdateZenMode(II)V
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_4e

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "matches_contact"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "matches_call_filter"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "set_consolidated_policy"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "set_notification_policy"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "listener_hints_changed"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "suppressor_changed"

    return-object p0

    :pswitch_1f
    const-string p0, "disable_effects"

    return-object p0

    :pswitch_22
    const-string/jumbo p0, "not_intercepted"

    return-object p0

    :pswitch_26
    const-string p0, "config"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "unsubscribe"

    return-object p0

    :pswitch_2d
    const-string/jumbo p0, "subscribe"

    return-object p0

    :pswitch_31
    const-string p0, "exit_condition"

    return-object p0

    :pswitch_34
    const-string/jumbo p0, "update_zen_mode"

    return-object p0

    :pswitch_38
    const-string/jumbo p0, "set_zen_mode"

    return-object p0

    :pswitch_3c
    const-string p0, "downtime"

    return-object p0

    :pswitch_3f
    const-string/jumbo p0, "set_ringer_mode_internal"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "set_ringer_mode_external"

    return-object p0

    :pswitch_47
    const-string p0, "allow_disable"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "intercepted"

    return-object p0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public static zenModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_f
    const-string p0, "alarms"

    return-object p0

    :cond_12
    const-string/jumbo p0, "no_interruptions"

    return-object p0

    :cond_16
    const-string/jumbo p0, "important_interruptions"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "off"

    return-object p0
.end method
