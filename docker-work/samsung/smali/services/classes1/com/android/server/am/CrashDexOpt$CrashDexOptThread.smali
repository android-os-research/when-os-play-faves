.class public Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;
.super Ljava/lang/Thread;
.source "CrashDexOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CrashDexOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashDexOptThread"
.end annotation


# static fields
.field public static final DEXOPT_DEBUG:Z = false

.field public static final maxDexoptListSize:I = 0x4

.field public static final maxListSize:I = 0x8

.field public static final maxTimeGap:J = 0xf0L


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final maxOccurredCount:I

.field public final synthetic this$0:Lcom/android/server/am/CrashDexOpt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CrashDexOpt;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CrashDexOpt$CrashKind;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->this$0:Lcom/android/server/am/CrashDexOpt;

    const-string p1, "CrashDexOpt"

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 71
    sget-object p1, Lcom/android/server/am/CrashDexOpt$CrashKind;->JAVA:Lcom/android/server/am/CrashDexOpt$CrashKind;

    if-ne p3, p1, :cond_11

    const/4 p1, 0x2

    .line 72
    iput p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    goto :goto_14

    :cond_11
    const/4 p1, 0x4

    .line 74
    iput p1, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    :goto_14
    return-void
.end method


# virtual methods
.method public final doForceDexOpt(Ljava/lang/String;)V
    .registers 9

    const-string p0, "CRASH_DEXOPT"

    .line 84
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 88
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to re-complie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string/jumbo v3, "speed-profile"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    .line 89
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dexopt fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_43
    :goto_43
    return-void
.end method

.method public final makeCrashPackageList()V
    .registers 16

    .line 102
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetlock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_5
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 105
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-lez v1, :cond_b2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 121
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v5

    :goto_2d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_a5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;

    .line 122
    iget-object v12, v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;->pkg:Ljava/lang/String;

    if-eqz v12, :cond_a2

    .line 123
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_45

    goto :goto_a2

    .line 129
    :cond_45
    iget-wide v13, v10, Lcom/android/server/am/CrashDexOpt$CrashPackage;->mTimeStamp:J

    sub-long/2addr v6, v13

    long-to-double v6, v6

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v13

    double-to-long v6, v6

    const-wide/16 v13, 0xf0

    cmp-long v6, v6, v13

    if-gez v6, :cond_9a

    .line 132
    invoke-virtual {v10}, Lcom/android/server/am/CrashDexOpt$CrashPackage;->increaseCount()I

    move-result v6

    iget v7, p0, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->maxOccurredCount:I

    if-ge v6, v7, :cond_5f

    goto :goto_a6

    .line 137
    :cond_5f
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_67

    move v6, v11

    goto :goto_7c

    :cond_7b
    move v6, v5

    :goto_7c
    if-nez v6, :cond_92

    .line 145
    invoke-virtual {p0, v12}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->doForceDexOpt(Ljava/lang/String;)V

    const/4 p0, 0x4

    if-lt v2, p0, :cond_8b

    .line 147
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_8b
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmDexOptedPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_92
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a6

    .line 155
    :cond_9a
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a6

    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    :cond_a5
    move v11, v5

    :goto_a6
    if-nez v11, :cond_b1

    if-ne v1, v4, :cond_b1

    .line 162
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_b1
    move v5, v11

    :cond_b2
    if-nez v5, :cond_cd

    .line 166
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v4, :cond_cd

    .line 167
    new-instance p0, Lcom/android/server/am/CrashDexOpt$CrashPackage;

    invoke-direct {p0}, Lcom/android/server/am/CrashDexOpt$CrashPackage;-><init>()V

    .line 168
    invoke-virtual {p0, v3}, Lcom/android/server/am/CrashDexOpt$CrashPackage;->setCrashPackageData(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/server/am/CrashDexOpt;->-$$Nest$sfgetmCrashPackage()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_cd
    monitor-exit v0

    return-void

    :catchall_cf
    move-exception p0

    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_5 .. :try_end_d1} :catchall_cf

    throw p0
.end method

.method public run()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/CrashDexOpt$CrashDexOptThread;->makeCrashPackageList()V

    return-void
.end method
