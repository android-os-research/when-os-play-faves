.class public Lcom/android/server/integrity/engine/RuleEvaluationEngine;
.super Ljava/lang/Object;
.source "RuleEvaluationEngine.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RuleEvaluation"

.field public static sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;


# instance fields
.field public final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    return-void
.end method

.method public static declared-synchronized getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    .registers 3

    const-class v0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    if-nez v1, :cond_12

    .line 54
    new-instance v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;-><init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    monitor-exit v0

    return-object v1

    .line 56
    :cond_12
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object p0

    .line 69
    invoke-static {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public final loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->initialized()Z

    move-result v0

    const-string v1, "RuleEvaluation"

    if-nez v0, :cond_14

    const-string p0, "Integrity rule files are not available."

    .line 74
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 79
    :cond_14
    :try_start_14
    iget-object p0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {p0, p1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    const-string p1, "Error loading rules."

    .line 81
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
