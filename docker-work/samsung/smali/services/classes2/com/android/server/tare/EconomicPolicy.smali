.class public abstract Lcom/android/server/tare/EconomicPolicy;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/EconomicPolicy$Cost;,
        Lcom/android/server/tare/EconomicPolicy$Reward;,
        Lcom/android/server/tare/EconomicPolicy$Action;,
        Lcom/android/server/tare/EconomicPolicy$UtilityReward;,
        Lcom/android/server/tare/EconomicPolicy$EventType;,
        Lcom/android/server/tare/EconomicPolicy$AppAction;
    }
.end annotation


# static fields
.field public static final COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

.field public static final MASK_EVENT:I = 0x1fffffff

.field public static final MASK_POLICY:I = 0x20000000

.field public static final MASK_TYPE:I = -0x40000000

.field public static final POLICY_AM:I = 0x0

.field public static final POLICY_JS:I = 0x20000000

.field public static final REGULATION_BASIC_INCOME:I = 0x0

.field public static final REGULATION_BIRTHRIGHT:I = 0x1

.field public static final REGULATION_DEMOTION:I = 0x4

.field public static final REGULATION_PROMOTION:I = 0x3

.field public static final REGULATION_WEALTH_RECLAMATION:I = 0x2

.field public static final REWARD_NOTIFICATION_INTERACTION:I = -0x7fffffff

.field public static final REWARD_NOTIFICATION_SEEN:I = -0x80000000

.field public static final REWARD_OTHER_USER_INTERACTION:I = -0x7ffffffc

.field public static final REWARD_TOP_ACTIVITY:I = -0x7ffffffe

.field public static final REWARD_WIDGET_INTERACTION:I = -0x7ffffffd

.field public static final SHIFT_POLICY:I = 0x1d

.field public static final SHIFT_TYPE:I = 0x1e

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_ACTION:I = 0x40000000

.field public static final TYPE_REGULATION:I = 0x0

.field public static final TYPE_REWARD:I = -0x80000000


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/EconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/tare/Modifier;

    .line 168
    sput-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .registers 5

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget v2, p0, v1

    .line 172
    invoke-static {v2, p1}, Lcom/android/server/tare/EconomicPolicy;->initModifier(ILcom/android/server/tare/InternalResourceService;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 3

    const/high16 v0, 0x20000000

    and-int v1, p0, v0

    if-eqz v1, :cond_2e

    if-eq v1, v0, :cond_9

    goto :goto_4d

    :cond_9
    packed-switch p0, :pswitch_data_64

    goto :goto_4d

    :pswitch_d
    const-string p0, "JOB_TIMEOUT"

    return-object p0

    :pswitch_10
    const-string p0, "JOB_MIN_RUNNING"

    return-object p0

    :pswitch_13
    const-string p0, "JOB_MIN_START"

    return-object p0

    :pswitch_16
    const-string p0, "JOB_LOW_RUNNING"

    return-object p0

    :pswitch_19
    const-string p0, "JOB_LOW_START"

    return-object p0

    :pswitch_1c
    const-string p0, "JOB_DEFAULT_RUNNING"

    return-object p0

    :pswitch_1f
    const-string p0, "JOB_DEFAULT_START"

    return-object p0

    :pswitch_22
    const-string p0, "JOB_HIGH_RUNNING"

    return-object p0

    :pswitch_25
    const-string p0, "JOB_HIGH_START"

    return-object p0

    :pswitch_28
    const-string p0, "JOB_MAX_RUNNING"

    return-object p0

    :pswitch_2b
    const-string p0, "JOB_MAX_START"

    return-object p0

    :cond_2e
    packed-switch p0, :pswitch_data_7e

    goto :goto_4d

    :pswitch_32
    const-string p0, "ALARM_CLOCK"

    return-object p0

    :pswitch_35
    const-string p0, "ALARM_NONWAKEUP_INEXACT"

    return-object p0

    :pswitch_38
    const-string p0, "ALARM_NONWAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_3b
    const-string p0, "ALARM_NONWAKEUP_EXACT"

    return-object p0

    :pswitch_3e
    const-string p0, "ALARM_NONWAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_41
    const-string p0, "ALARM_WAKEUP_INEXACT"

    return-object p0

    :pswitch_44
    const-string p0, "ALARM_WAKEUP_INEXACT_ALLOW_WHILE_IDLE"

    return-object p0

    :pswitch_47
    const-string p0, "ALARM_WAKEUP_EXACT"

    return-object p0

    :pswitch_4a
    const-string p0, "ALARM_WAKEUP_EXACT_ALLOW_WHILE_IDLE"

    return-object p0

    .line 379
    :goto_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ACTION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_64
    .packed-switch 0x60000000
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x40000000
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public static dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V
    .registers 4

    .line 450
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    .line 451
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ctp="

    .line 452
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", basePrice="

    .line 454
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 455
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static dumpActiveModifiers(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_24

    const-string v1, "Modifier "

    .line 434
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 436
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 438
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    .line 440
    invoke-virtual {v1, p0}, Lcom/android/server/tare/Modifier;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1e

    :cond_19
    const-string v1, "NOT ACTIVE"

    .line 442
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 445
    :goto_1e
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method public static dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V
    .registers 4

    .line 460
    iget v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->id:I

    invoke-static {v0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    .line 461
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "instant="

    .line 462
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", ongoing/sec="

    .line 464
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", maxDaily="

    .line 466
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 467
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 3

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2d

    if-eqz v0, :cond_28

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_23

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_EVENT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_23
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 316
    :cond_28
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->regulationToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :cond_2d
    invoke-static {p0}, Lcom/android/server/tare/EconomicPolicy;->rewardToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEventType(I)I
    .registers 2

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p0, v0

    return p0
.end method

.method public static getModifier(I)Lcom/android/server/tare/Modifier;
    .registers 4

    if-ltz p0, :cond_28

    .line 293
    sget-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v1, v0

    if-ge p0, v1, :cond_28

    .line 296
    aget-object v0, v0, p0

    if-eqz v0, :cond_c

    return-object v0

    .line 298
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modifier #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was never initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid modifier id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initModifier(ILcom/android/server/tare/InternalResourceService;)V
    .registers 5

    const-string v0, "Invalid modifier id "

    if-ltz p0, :cond_47

    .line 266
    sget-object v1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    array-length v2, v1

    if-ge p0, v2, :cond_47

    .line 269
    aget-object v2, v1, p0

    if-nez v2, :cond_46

    if-eqz p0, :cond_3f

    const/4 v2, 0x1

    if-eq p0, v2, :cond_39

    const/4 v2, 0x2

    if-eq p0, v2, :cond_33

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1e

    .line 282
    new-instance v0, Lcom/android/server/tare/ProcessStateModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ProcessStateModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_44

    .line 285
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :cond_33
    new-instance v0, Lcom/android/server/tare/PowerSaveModeModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/PowerSaveModeModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_44

    .line 276
    :cond_39
    new-instance v0, Lcom/android/server/tare/DeviceIdleModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/DeviceIdleModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_44

    .line 273
    :cond_3f
    new-instance v0, Lcom/android/server/tare/ChargingModifier;

    invoke-direct {v0, p1}, Lcom/android/server/tare/ChargingModifier;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    .line 287
    :goto_44
    aput-object v0, v1, p0

    :cond_46
    return-void

    .line 267
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static regulationToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_30

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_24

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REGULATION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const-string p0, "DEMOTION"

    return-object p0

    :cond_27
    const-string p0, "PROMOTION"

    return-object p0

    :cond_2a
    const-string p0, "WEALTH_RECLAMATION"

    return-object p0

    :cond_2d
    const-string p0, "BIRTHRIGHT"

    return-object p0

    :cond_30
    const-string p0, "BASIC_INCOME"

    return-object p0
.end method

.method public static rewardToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_28

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_REWARD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    const-string p0, "REWARD_OTHER_USER_INTERACTION"

    return-object p0

    :pswitch_1c
    const-string p0, "REWARD_WIDGET_INTERACTION"

    return-object p0

    :pswitch_1f
    const-string p0, "REWARD_TOP_ACTIVITY"

    return-object p0

    :pswitch_22
    const-string p0, "REWARD_NOTIFICATION_INTERACTION"

    return-object p0

    :pswitch_25
    const-string p0, "REWARD_NOTIFICATION_SEEN"

    return-object p0

    :pswitch_data_28
    .packed-switch -0x80000000
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    return-void
.end method

.method public abstract getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
.end method

.method public getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J
    .registers 7

    .line 420
    invoke-virtual {p1}, Landroid/util/KeyValueListParser;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_10

    .line 424
    invoke-virtual {p1, p3, v0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_10
    if-eqz p2, :cond_1b

    .line 427
    invoke-virtual {p2, p3, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4, p5}, Landroid/app/tare/EconomyManager;->parseCreditValue(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_1b
    return-wide p4
.end method

.method public abstract getCostModifiers()[I
.end method

.method public final getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;
    .registers 16

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object p1

    if-nez p1, :cond_e

    .line 240
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2, p1, p2}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0

    .line 242
    :cond_e
    iget-wide v0, p1, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    .line 243
    iget-wide v2, p1, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    .line 244
    invoke-virtual {p0}, Lcom/android/server/tare/EconomicPolicy;->getCostModifiers()[I

    move-result-object p0

    .line 246
    array-length p1, p0

    const/4 v4, 0x0

    move-wide v10, v2

    move v2, v4

    :goto_1a
    const/4 v3, 0x3

    if-ge v4, p1, :cond_33

    aget v5, p0, v4

    if-ne v5, v3, :cond_23

    const/4 v2, 0x1

    goto :goto_30

    .line 250
    :cond_23
    invoke-static {v5}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v0, v1}, Lcom/android/server/tare/Modifier;->getModifiedCostToProduce(J)J

    move-result-wide v0

    .line 252
    invoke-virtual {v3, v10, v11}, Lcom/android/server/tare/Modifier;->getModifiedPrice(J)J

    move-result-wide v5

    move-wide v10, v5

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_33
    if-eqz v2, :cond_43

    .line 258
    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->getModifier(I)Lcom/android/server/tare/Modifier;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/server/tare/ProcessStateModifier;

    move v6, p2

    move-object v7, p3

    move-wide v8, v0

    .line 259
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/tare/ProcessStateModifier;->getModifiedPrice(ILjava/lang/String;JJ)J

    move-result-wide v10

    .line 261
    :cond_43
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    invoke-direct {p0, v0, v1, v10, v11}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0
.end method

.method public abstract getHardSatiatedConsumptionLimit()J
.end method

.method public abstract getInitialSatiatedConsumptionLimit()J
.end method

.method public abstract getMaxSatiatedBalance()J
.end method

.method public abstract getMinSatiatedBalance(ILjava/lang/String;)J
.end method

.method public abstract getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    const/4 p0, 0x0

    :goto_1
    const/4 p1, 0x4

    if-ge p0, p1, :cond_10

    .line 179
    sget-object p1, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object p1, p1, p0

    if-eqz p1, :cond_d

    .line 181
    invoke-virtual {p1}, Lcom/android/server/tare/Modifier;->setup()V

    :cond_d
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public tearDown()V
    .registers 2

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge p0, v0, :cond_10

    .line 189
    sget-object v0, Lcom/android/server/tare/EconomicPolicy;->COST_MODIFIER_BY_INDEX:[Lcom/android/server/tare/Modifier;

    aget-object v0, v0, p0

    if-eqz v0, :cond_d

    .line 191
    invoke-virtual {v0}, Lcom/android/server/tare/Modifier;->tearDown()V

    :cond_d
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
