.class Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/ProcessRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlowdownRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/ProcessRestrictionManager;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/ProcessRestrictionManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/ProcessRestrictionManager;

    .line 214
    iput-object p1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;->this$0:Lcom/android/server/ssrm/ProcessRestrictionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 218
    const-string v0, "Thread is dead..."

    :try_start_2
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v1, :cond_2c

    .line 219
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FROZEN_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", THAWED_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2c
    :goto_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_72

    .line 223
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 224
    sget v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 225
    .local v1, "delay":I
    sget-boolean v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG:Z

    const/16 v3, -0x3e7

    if-eqz v2, :cond_4d

    .line 226
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getFrozenTime()I

    move-result v2

    .line 227
    .local v2, "frozen":I
    if-eq v2, v3, :cond_4a

    .line 228
    move v1, v2

    goto :goto_4d

    .line 230
    :cond_4a
    sget v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    move v1, v4

    .line 233
    .end local v2    # "frozen":I
    :cond_4d
    :goto_4d
    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 234
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 235
    sget v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    move v1, v2

    .line 236
    sget-boolean v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG:Z

    if-eqz v2, :cond_67

    .line 237
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getThawedTime()I

    move-result v2

    .line 238
    .local v2, "thawed":I
    if-eq v2, v3, :cond_64

    .line 239
    move v1, v2

    goto :goto_67

    .line 241
    :cond_64
    sget v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    move v1, v3

    .line 244
    .end local v2    # "thawed":I
    :cond_67
    :goto_67
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6b} :catch_6e
    .catchall {:try_start_2 .. :try_end_6b} :catchall_6c

    .line 245
    .end local v1    # "delay":I
    goto :goto_2c

    .line 249
    :catchall_6c
    move-exception v1

    goto :goto_79

    .line 246
    :catch_6e
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_6c

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_72
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    nop

    .line 251
    return-void

    .line 249
    :goto_79
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    throw v1
.end method
