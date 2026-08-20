.class Lcom/samsung/android/game/AlarmReceiver$Task;
.super Landroid/os/AsyncTask;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method private constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V
    .registers 3
    .param p1, "pendingResult"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/game/AlarmReceiver$Task;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/game/AlarmReceiver$Task;->intent:Landroid/content/Intent;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/samsung/android/game/AlarmReceiver$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/BroadcastReceiver$PendingResult;
    .param p2, "x1"    # Landroid/content/Intent;
    .param p3, "x2"    # Lcom/samsung/android/game/AlarmReceiver$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/AlarmReceiver$Task;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/AlarmReceiver$Task;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .registers 19
    .param p1, "contexts"    # [Landroid/content/Context;

    .line 46
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1ab

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1ab

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-nez v3, :cond_13

    move-object/from16 v4, p0

    move-object v0, v1

    goto/16 :goto_1ae

    .line 51
    :cond_13
    aget-object v2, v0, v2

    .line 52
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 53
    .local v3, "userId":I
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task.doInBackground(), userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/samsung/android/game/AlarmReceiver$Task;->intent:Landroid/content/Intent;

    const-string v7, "typeId"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 56
    .local v5, "typeId":I
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task.doInBackground(), typeId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v7, Lcom/samsung/android/game/Const$IntentType;->EVERY_HOUR_ALARM:Lcom/samsung/android/game/Const$IntentType;

    invoke-virtual {v7}, Lcom/samsung/android/game/Const$IntentType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_1a7

    .line 59
    const-string v7, "com.samsung.android.game.gos"

    invoke-static {v2, v7, v3}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v7

    .line 60
    .local v7, "gosEnabled":Z
    if-eqz v7, :cond_7e

    .line 61
    new-instance v6, Lcom/samsung/android/game/AlarmController;

    invoke-direct {v6}, Lcom/samsung/android/game/AlarmController;-><init>()V

    invoke-virtual {v6, v2}, Lcom/samsung/android/game/AlarmController;->cancelEveryHourAlarm(Landroid/content/Context;)V

    .line 62
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Task.doInBackground(), stop the alarm because GOS is enabled"

    invoke-static {v6, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v1

    .line 66
    :cond_7e
    new-instance v9, Lcom/samsung/android/game/CategoryUpdater;

    invoke-direct {v9, v2}, Lcom/samsung/android/game/CategoryUpdater;-><init>(Landroid/content/Context;)V

    .line 67
    .local v9, "cu":Lcom/samsung/android/game/CategoryUpdater;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 68
    .local v10, "elapsedTime":J
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", elapsedTime="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, ", mFullyUpdatedTime="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 69
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$200()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-static {v12, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$200()J

    move-result-wide v12

    sub-long v12, v10, v12

    .line 72
    .local v12, "offset":J
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Task.doInBackground(), time offset="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Task.doInBackground(), time offset(min)="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v2

    .end local v2    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    invoke-virtual {v15, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$200()J

    move-result-wide v1

    sub-long v1, v10, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0xa

    invoke-virtual {v6, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    cmp-long v1, v1, v14

    if-lez v1, :cond_154

    .line 77
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Task.doInBackground(), try updating all the installed packages"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v9, v3}, Lcom/samsung/android/game/CategoryUpdater;->getInstalledPkgList(I)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, "targetPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 82
    .local v2, "successful":Z
    if-nez v1, :cond_126

    .line 83
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Task.doInBackground(), targetPkgNames is null"

    invoke-static {v6, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    goto :goto_130

    .line 85
    :cond_126
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_130

    .line 86
    invoke-virtual {v9, v1, v3}, Lcom/samsung/android/game/CategoryUpdater;->updateCategoriesToDB(Ljava/util/List;I)Z

    move-result v2

    .line 89
    :cond_130
    :goto_130
    if-eqz v2, :cond_153

    .line 91
    # setter for: Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J
    invoke-static {v10, v11}, Lcom/samsung/android/game/AlarmReceiver;->access$202(J)J

    .line 92
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Task.doInBackground(), new mFullyUpdatedTime="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/samsung/android/game/AlarmReceiver;->mFullyUpdatedTime:J
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$200()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v1    # "targetPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "successful":Z
    :cond_153
    goto :goto_1a9

    .line 96
    :cond_154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v1    # "targetPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v2

    .line 98
    .local v2, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    invoke-virtual {v2, v3}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v6

    .line 99
    .local v6, "pkgDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_165
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_183

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/game/PkgData;

    .line 100
    .local v15, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v15, :cond_180

    invoke-virtual {v15}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v0

    if-ne v0, v8, :cond_180

    .line 101
    invoke-virtual {v15}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v15    # "pkgData":Lcom/samsung/android/game/PkgData;
    :cond_180
    move-object/from16 v0, p1

    goto :goto_165

    .line 104
    :cond_183
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Task.doInBackground(), try updating category-undefined packages. target= "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a9

    .line 107
    invoke-virtual {v9, v1, v3}, Lcom/samsung/android/game/CategoryUpdater;->updateCategoriesToDB(Ljava/util/List;I)Z

    goto :goto_1a9

    .line 57
    .end local v1    # "targetPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "pkgDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    .end local v7    # "gosEnabled":Z
    .end local v9    # "cu":Lcom/samsung/android/game/CategoryUpdater;
    .end local v10    # "elapsedTime":J
    .end local v12    # "offset":J
    .end local v16    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    :cond_1a7
    move-object/from16 v16, v2

    .line 110
    .end local v2    # "context":Landroid/content/Context;
    .restart local v16    # "context":Landroid/content/Context;
    :cond_1a9
    :goto_1a9
    const/4 v0, 0x0

    return-object v0

    .line 46
    .end local v3    # "userId":I
    .end local v5    # "typeId":I
    .end local v16    # "context":Landroid/content/Context;
    :cond_1ab
    move-object/from16 v4, p0

    move-object v0, v1

    .line 47
    :goto_1ae
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Task.doInBackground(), context is null"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/game/AlarmReceiver$Task;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "v"    # Ljava/lang/Void;

    .line 115
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 116
    # getter for: Lcom/samsung/android/game/AlarmReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/game/AlarmReceiver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task.onPostExecute()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/game/AlarmReceiver$Task;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 121
    return-void
.end method
