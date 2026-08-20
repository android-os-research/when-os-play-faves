.class public Lcom/android/server/chimera/ChimeraStrategy;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;,
        Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ChimeraStrategy"


# instance fields
.field public final PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

.field public final PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

.field public final PROPERTY_NAME_STRATEGY:Ljava/lang/String;

.field public mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

.field public mFixedMemFreeTarget:J

.field public mMemFreeTarget:J

.field public mProtectedCountOnDynamic:I

.field public mProtectedCountOnHomeTrigger:I

.field public mProtectedCountOnLmkdTrigger:I

.field public mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentAppManager(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/ChimeraRecentAppManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .registers 5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.config.chimera.protected_count_on_lmkd"

    .line 25
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_LMKD:Ljava/lang/String;

    const-string/jumbo v0, "persist.config.chimera.protected_count_on_home"

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_PROTECTED_COUNT_HOME:Ljava/lang/String;

    const-string/jumbo v0, "ro.slmk.chimera_strategy_%dgb"

    .line 27
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->PROPERTY_NAME_STRATEGY:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mRecentAppManager:Lcom/android/server/chimera/ChimeraRecentAppManager;

    .line 233
    iput-object p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 234
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->initializeDefaultParameters()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_194

    .line 340
    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_194

    :cond_7
    const/4 v0, 0x0

    .line 344
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_194

    .line 346
    :cond_17
    array-length v1, p2

    if-lez v1, :cond_194

    .line 347
    aget-object v0, p2, v0

    const-string/jumbo v1, "info"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy;->dumpInfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_194

    :cond_2a
    const-string/jumbo v1, "mem"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    array-length v1, p2

    if-le v1, v2, :cond_60

    .line 352
    :try_start_37
    aget-object p2, p2, v2

    .line 353
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy;->setTargetMem(J)V

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Target mem : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_54} :catch_56

    goto/16 :goto_194

    :catch_56
    move-exception p0

    .line 357
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_194

    :cond_60
    const-string/jumbo v1, "set_protected_count_on_lmkd"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    array-length v1, p2

    if-le v1, v2, :cond_95

    .line 361
    :try_start_6c
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_74} :catch_75

    goto :goto_7d

    :catch_75
    move-exception p2

    .line 363
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    :goto_7d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProtectedCount On Lmkd : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_194

    :cond_95
    const-string/jumbo v1, "set_protected_count_on_home"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    array-length v1, p2

    if-le v1, v2, :cond_ca

    .line 368
    :try_start_a1
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_a9} :catch_aa

    goto :goto_b2

    :catch_aa
    move-exception p2

    .line 370
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    :goto_b2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProtectedCount On Home : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_194

    :cond_ca
    const-string v1, "enable_dynamic"

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 374
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->enableDynamicTargetFree()V

    const-string p0, "enable dynamic memfreetarget"

    .line 376
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_194

    :cond_dc
    const-string v1, "dynamic_min"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d

    array-length v1, p2

    if-le v1, v2, :cond_10d

    .line 378
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_194

    .line 379
    aget-object p2, p2, v2

    .line 380
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 381
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetThresholdMin(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set dynamic threshold min: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_194

    :cond_10d
    const-string v1, "dynamic_max"

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    array-length v1, p2

    if-le v1, v2, :cond_13d

    .line 385
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_194

    .line 386
    aget-object p2, p2, v2

    .line 387
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 388
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetThresholdMax(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V

    .line 389
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "set dynamic threshold max: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_194

    :cond_13d
    const-string/jumbo v1, "get_reentry"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 392
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz p0, :cond_194

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    if-eqz p0, :cond_194

    .line 393
    invoke-virtual {p0}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result p0

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get reentry: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_194

    :cond_167
    const-string/jumbo v1, "set_reentry"

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 397
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-eqz v0, :cond_194

    .line 398
    aget-object p2, p2, v2

    .line 399
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set reentry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-static {p0, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->-$$Nest$msetReentry(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;F)V

    :cond_194
    :goto_194
    return-void
.end method

.method public dumpInfo(Ljava/io/PrintWriter;)V
    .registers 5

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UseDynamicFreeMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemFreeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnLmkdTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedCountOnHomeTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableDynamicTargetFree()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_11

    .line 410
    new-instance v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;-><init>(Lcom/android/server/chimera/ChimeraStrategy;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    :cond_11
    return-void
.end method

.method public getFreeMemTarget(J)J
    .registers 4

    .line 319
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mDynamicFreeMem:Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;

    if-nez v0, :cond_b

    goto :goto_12

    .line 322
    :cond_b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->updateFreeMem(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide p1

    .line 320
    :cond_12
    :goto_12
    iget-wide p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide p0
.end method

.method public getProtectedCountOnHomeTrigger()I
    .registers 2

    .line 308
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 309
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return p0

    .line 311
    :cond_9
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    return p0
.end method

.method public getProtectedCountOnLmkdTrigger()I
    .registers 2

    .line 301
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 302
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    return p0

    .line 304
    :cond_9
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    return p0
.end method

.method public getSwapMemTarget()J
    .registers 3

    .line 315
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-wide v0
.end method

.method public final initializeDefaultParameters()V
    .registers 7

    .line 239
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraStrategy;->updateDefaultParametersIfExist(I)V

    .line 241
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getTargetFree(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 242
    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mFixedMemFreeTarget:J

    .line 244
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnLmkdTrigger(I)I

    move-result v1

    const-string/jumbo v2, "persist.config.chimera.protected_count_on_lmkd"

    .line 243
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 246
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getProtectedCountOnHomeTrigger(I)I

    move-result v1

    const-string/jumbo v2, "persist.config.chimera.protected_count_on_home"

    .line 245
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 248
    iget-wide v2, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3b

    if-ltz v1, :cond_3b

    iget v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    if-gez v1, :cond_48

    .line 249
    :cond_3b
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_TARGET_FREE:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 250
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_HOME:I

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    .line 251
    sget v1, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->UNKNOWN_GB_PROTECTED_COUNT_ON_LMKD:I

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    .line 254
    :cond_48
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getDynamicProtectedCount(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    .line 256
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChimeraStrategy() - ramSizeGb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mMemFreeTarget: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnLmkdTrigger: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnLmkdTrigger:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnHomeTrigger: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnHomeTrigger:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mEnableDynamicFreeMem: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mProtectedCountOnDynamic: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mProtectedCountOnDynamic:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChimeraStrategy"

    .line 256
    invoke-interface {v1, v0, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEnableDynamicFreeMem()Z
    .registers 1

    .line 327
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SettingRepository;->isDynamicTargetFreeEnabled()Z

    move-result p0

    return p0
.end method

.method public resetTargetMem()V
    .registers 3

    .line 336
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mFixedMemFreeTarget:J

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    return-void
.end method

.method public setTargetMem(J)V
    .registers 3

    .line 331
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 332
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SettingRepository;->enableDynamicTargetFree(Z)V

    return-void
.end method

.method public final updateDefaultParametersIfExist(I)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 267
    :goto_2
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetIDX_RAM()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-lez v2, :cond_2f

    .line 268
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetIDX_RAM()I

    move-result v4

    aget v2, v2, v4

    if-lt v2, p1, :cond_2c

    .line 269
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetIDX_RAM()I

    move-result v2

    aget p1, p1, v2

    goto :goto_31

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2f
    move v1, v0

    move p1, v3

    :goto_31
    if-eq p1, v3, :cond_c1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string/jumbo p1, "ro.slmk.chimera_strategy_%dgb"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 277
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDefaultParameters > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ChimeraStrategy"

    invoke-interface {p0, v3, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c1

    const-string p0, ","

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 283
    array-length p1, p0

    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v0

    aget-object v0, v0, v1

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_bc

    .line 284
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetIDX_TARGET_FREE()I

    move-result p1

    :goto_85
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetIDX_PROTECTED_HOME()I

    move-result v0

    if-gt p1, v0, :cond_c1

    .line 286
    :try_start_8b
    invoke-static {}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->-$$Nest$sfgetsParameters()[[I

    move-result-object v0

    aget-object v0, v0, v1

    add-int/lit8 v2, p1, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9f} :catch_a0

    goto :goto_b9

    :catch_a0
    move-exception v0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while updating default : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    add-int/lit8 p1, p1, 0x1

    goto :goto_85

    :cond_bc
    const-string p0, "Chimera parameter mismatched"

    .line 294
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    return-void
.end method
