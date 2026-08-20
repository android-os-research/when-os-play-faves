.class public Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;
.super Ljava/lang/Object;
.source "ChimeraStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/ChimeraStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicFreeMem"
.end annotation


# instance fields
.field public PSI_MEM_SOME_THRESHOLD_MIN:J

.field public PSI_MEN_SOME_THRESHOLD_MAX:J

.field public mKeepCnt:I

.field public mReentry:F

.field public mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

.field public mTriggerCnt:I

.field public ramSizeGb:I

.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraStrategy;


# direct methods
.method public static bridge synthetic -$$Nest$msetReentry(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setReentry(F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetThresholdMax(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMax(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetThresholdMin(Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->setThresholdMin(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraStrategy;)V
    .registers 7

    .line 123
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mTriggerCnt:I

    .line 112
    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 114
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    .line 115
    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy$DefaultParameters;->getReentry(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 118
    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    .line 124
    iget v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->ramSizeGb:I

    const-string v1, "100"

    const-string/jumbo v2, "ro.slmk.psi_critical"

    const-string/jumbo v3, "ro.slmk.psi_medium"

    const/4 v4, 0x6

    if-ge v0, v4, :cond_46

    .line 125
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    const-string v0, "150"

    .line 126
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    goto :goto_62

    :cond_46
    const-string v0, "60"

    .line 128
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    .line 129
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    .line 131
    :goto_62
    new-instance v0, Lcom/android/server/chimera/ReentryCounter;

    invoke-static {p1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/chimera/ReentryCounter;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    .line 132
    iget p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/ReentryCounter;->setTargetReentryCount(F)V

    return-void
.end method


# virtual methods
.method public final setReentry(F)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    .line 222
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ReentryCounter;->setTargetReentryCount(F)V

    return-void
.end method

.method public final setThresholdMax(J)V
    .registers 3

    .line 217
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    return-void
.end method

.method public final setThresholdMin(J)V
    .registers 3

    .line 213
    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    return-void
.end method

.method public updateFreeMem(J)J
    .registers 20

    move-object/from16 v0, p0

    .line 137
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/chimera/ReentryCounter;->isReentryEnabled()Z

    move-result v1

    if-eqz v1, :cond_15f

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v1}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_15f

    .line 138
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmRecentAppManager(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/ChimeraRecentAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraRecentAppManager;->getRecentAppInfo()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_15f

    .line 142
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentryCounter:Lcom/android/server/chimera/ReentryCounter;

    invoke-virtual {v4}, Lcom/android/server/chimera/ReentryCounter;->getReentry()F

    move-result v4

    .line 146
    iget-wide v5, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEM_SOME_THRESHOLD_MIN:J

    cmp-long v5, v2, v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v5, :cond_41

    move v5, v8

    goto :goto_4a

    .line 148
    :cond_41
    iget-wide v9, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    cmp-long v5, v2, v9

    if-gez v5, :cond_49

    move v5, v7

    goto :goto_4a

    :cond_49
    move v5, v6

    :goto_4a
    const/16 v9, 0x8

    const/4 v10, -0x1

    if-nez v5, :cond_68

    .line 154
    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    .line 155
    iget v6, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v7, v4, v6

    if-gez v7, :cond_59

    :goto_57
    move v6, v10

    goto :goto_a1

    :cond_59
    float-to-double v11, v4

    float-to-double v13, v6

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v13, v15

    cmpl-double v7, v11, v13

    if-lez v7, :cond_63

    goto :goto_57

    :cond_63
    cmpl-float v6, v4, v6

    if-lez v6, :cond_81

    goto :goto_57

    :cond_68
    if-ne v5, v7, :cond_83

    .line 165
    iget v11, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v12, v4, v11

    if-gez v12, :cond_7a

    .line 166
    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    if-le v10, v9, :cond_81

    .line 170
    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_a1

    :cond_7a
    cmpl-float v6, v4, v11

    if-lez v6, :cond_81

    .line 173
    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_57

    :cond_81
    move v6, v8

    goto :goto_a1

    .line 178
    :cond_83
    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mReentry:F

    cmpg-float v10, v4, v10

    if-gez v10, :cond_96

    .line 179
    iget v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_94

    .line 183
    iput v8, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->mKeepCnt:I

    goto :goto_97

    :cond_94
    move v6, v8

    goto :goto_97

    :cond_96
    move v6, v7

    :goto_97
    const-wide/16 v10, 0x2

    .line 189
    iget-wide v12, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->PSI_MEN_SOME_THRESHOLD_MAX:J

    mul-long/2addr v12, v10

    cmp-long v8, v2, v12

    if-lez v8, :cond_a1

    move v6, v7

    .line 194
    :cond_a1
    :goto_a1
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v10

    mul-int/lit8 v8, v6, 0x32

    mul-int/lit16 v8, v8, 0x400

    int-to-long v12, v8

    add-long/2addr v10, v12

    invoke-static {v7, v10, v11}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    .line 196
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v7

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    const/4 v11, 0x3

    div-int/2addr v10, v11

    int-to-long v12, v10

    cmp-long v7, v7, v12

    const-string v8, "ChimeraStrategy"

    if-lez v7, :cond_e3

    .line 198
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    const-string/jumbo v9, "over max free target"

    invoke-interface {v7, v8, v9}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v9

    mul-int/lit16 v9, v9, 0x400

    mul-int/lit16 v9, v9, 0x400

    div-int/2addr v9, v11

    int-to-long v9, v9

    invoke-static {v7, v9, v10}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    goto :goto_112

    .line 200
    :cond_e3
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v12

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    mul-int/lit16 v7, v7, 0x400

    div-int/2addr v7, v9

    int-to-long v14, v7

    cmp-long v7, v12, v14

    if-gez v7, :cond_112

    .line 202
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    const-string/jumbo v10, "less min free target"

    invoke-interface {v7, v8, v10}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    div-int/2addr v10, v9

    int-to-long v9, v10

    invoke-static {v7, v9, v10}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fputmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;J)V

    .line 205
    :cond_112
    :goto_112
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraStrategy;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reentry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " memDelta: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " psiLevel: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  avgPsiSomeTotal: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " full Total:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " New free target memory: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_15f
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraStrategy$DynamicFreeMem;->this$0:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraStrategy;->-$$Nest$fgetmMemFreeTarget(Lcom/android/server/chimera/ChimeraStrategy;)J

    move-result-wide v0

    return-wide v0
.end method
