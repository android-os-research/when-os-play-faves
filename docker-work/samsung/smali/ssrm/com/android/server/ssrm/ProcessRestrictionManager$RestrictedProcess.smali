.class Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/ProcessRestrictionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictedProcess"
.end annotation


# static fields
.field private static final RESTRICTION_STATE_FREEZE:I = 0x2

.field private static final RESTRICTION_STATE_SLOWDOWN:I = 0x1

.field private static final RESTRICTION_STATE_THAW:I


# instance fields
.field mIsFreezeTarget:Z

.field mIsSlowdownTarget:Z

.field private mLastState:I

.field mLastStateUpdatedTime:J

.field private mLastStringState:Ljava/lang/String;

.field mPid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I
    .registers 1

    iget p0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    return p0
.end method

.method constructor <init>(IZZ)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "freeze"    # Z
    .param p3, "slowdown"    # Z

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    .line 264
    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 272
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    .line 275
    iput p1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    .line 276
    iput-boolean p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    .line 277
    iput-boolean p3, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 279
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_4b

    .line 280
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictedProcess [NEW] pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFreeze = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSlowdown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_4b
    return-void
.end method


# virtual methods
.method isNotTargetPid()Z
    .registers 2

    .line 372
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isSlowdownState()Z
    .registers 3

    .line 376
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method isSystemUid(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 380
    const/4 v0, 0x0

    const/16 v1, 0x1388

    if-lt p1, v1, :cond_a

    const/16 v1, 0x176f

    if-gt p1, v1, :cond_a

    .line 381
    return v0

    .line 384
    :cond_a
    const/16 v1, 0x2710

    if-ge p1, v1, :cond_10

    .line 385
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_10
    return v0
.end method

.method proceedRestriction()I
    .registers 10

    .line 306
    const/4 v0, -0x1

    .local v0, "currentState":I
    const/4 v1, 0x1

    .line 308
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-eqz v2, :cond_8

    .line 309
    const/4 v0, 0x2

    goto :goto_f

    .line 310
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-eqz v2, :cond_e

    .line 311
    const/4 v0, 0x1

    goto :goto_f

    .line 313
    :cond_e
    const/4 v0, 0x0

    .line 316
    :goto_f
    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    if-eq v0, v2, :cond_128

    .line 317
    sget-boolean v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v2, :cond_3b

    .line 318
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proceedRestriction[pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_3b
    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v2

    .line 323
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isSystemUid(I)Z

    move-result v3

    .line 324
    .local v3, "isSystemUid":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_6c

    .line 325
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slowdown UID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (system)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v5, v2, v4}, Landroid/os/Process;->setProcessSlowdown(IIZ)V

    .line 327
    const/4 v1, -0x1

    .line 330
    :cond_6c
    const-string v5, ""

    .line 331
    .local v5, "state":Ljava/lang/String;
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v6, :cond_7a

    .line 332
    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v4, v2, v7}, Landroid/os/Process;->setProcessMARsFrozen(IIZ)Z

    .line 333
    const-string v4, "FROZEN"

    .end local v5    # "state":Ljava/lang/String;
    .local v4, "state":Ljava/lang/String;
    goto :goto_90

    .line 334
    .end local v4    # "state":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_7a
    if-ne v0, v7, :cond_84

    .line 335
    iget v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v4, v2, v7}, Landroid/os/Process;->setProcessSlowdown(IIZ)V

    .line 336
    const-string v4, "SLOWDOWN"

    .end local v5    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    goto :goto_90

    .line 338
    .end local v4    # "state":Ljava/lang/String;
    .restart local v5    # "state":Ljava/lang/String;
    :cond_84
    iget v6, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v6, v2, v4}, Landroid/os/Process;->setProcessSlowdown(IIZ)V

    .line 339
    iget v6, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-static {v6, v2, v4}, Landroid/os/Process;->setProcessMARsFrozen(IIZ)Z

    .line 340
    const-string v4, "THAWED"

    .line 344
    .end local v5    # "state":Ljava/lang/String;
    .restart local v4    # "state":Ljava/lang/String;
    :goto_90
    sget-boolean v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v5, :cond_c2

    .line 345
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@SLOWDOWN:: isSystem = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_c2
    iget v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    const-string v6, " -> "

    if-eqz v5, :cond_e3

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    goto :goto_11e

    .line 352
    :cond_e3
    const/4 v1, -0x1

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but PID is 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 354
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "proceedRestriction: pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_11e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    .line 357
    iput v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    .line 358
    iput-object v4, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStringState:Ljava/lang/String;

    .line 361
    .end local v2    # "uid":I
    .end local v3    # "isSystemUid":Z
    .end local v4    # "state":Ljava/lang/String;
    :cond_128
    return v1
.end method

.method releaseSlowdown()V
    .registers 3

    .line 365
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 367
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->proceedRestriction()I

    .line 369
    :cond_b
    return-void
.end method

.method updateState(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isEnabled"    # Z

    .line 286
    const-string v0, "freeze"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "RestrictedProcess [UPDATE] : pid = "

    if-eqz v0, :cond_37

    .line 287
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    if-eq v0, p2, :cond_6b

    .line 288
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_34

    .line 289
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFreeze = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_34
    iput-boolean p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsFreezeTarget:Z

    goto :goto_6b

    .line 294
    :cond_37
    const-string v0, "slowdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 295
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    if-eq v0, p2, :cond_6b

    .line 296
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_69

    .line 297
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSlowdown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_69
    iput-boolean p2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mIsSlowdownTarget:Z

    .line 303
    :cond_6b
    :goto_6b
    return-void
.end method
