.class public Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;
.super Ljava/lang/Object;
.source "SemPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/SemPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestOverride"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;,
        Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;
    }
.end annotation


# instance fields
.field blacklist mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

.field blacklist mPhoneId:I

.field blacklist mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

.field blacklist mStateInitialized:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->clear()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 2

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 1293
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    .line 1294
    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    const/4 v0, -0x1

    .line 1295
    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    const/4 v0, 0x0

    .line 1296
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public blacklist getStateInitialized()Z
    .registers 1

    .line 1319
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    return p0
.end method

.method public blacklist isNone()Z
    .registers 2

    .line 1320
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist isOverride()Z
    .registers 2

    .line 1321
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->OVERRIDE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist isRestore()Z
    .registers 2

    .line 1322
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;->RESTORE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist isWaiting()Z
    .registers 2

    .line 1323
    iget-object p0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    sget-object v0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;->NONE:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    if-eq p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;)V
    .registers 2

    .line 1317
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;)V
    .registers 3

    .line 1312
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-eq v0, p1, :cond_7

    const/4 v0, 0x0

    .line 1313
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    .line 1315
    :cond_7
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;I)V
    .registers 4

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    if-eq v0, p2, :cond_b

    :cond_8
    const/4 v0, 0x0

    .line 1306
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    .line 1308
    :cond_b
    iput-object p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    .line 1309
    iput p2, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    return-void
.end method

.method public blacklist set(Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;)V
    .registers 3

    .line 1299
    iget-object v0, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    .line 1300
    iget-object v0, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    iput-object v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    .line 1301
    iget v0, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    iput v0, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    .line 1302
    iget-boolean p1, p1, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public blacklist setStateInitialized(Z)V
    .registers 2

    .line 1318
    iput-boolean p1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mStateInitialized:Z

    return-void
.end method

.method public declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1325
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOverride(mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mState:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride;->mDelayReason:Lcom/android/internal/telephony/data/SemPhoneSwitcher$RequestOverride$DelayReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
