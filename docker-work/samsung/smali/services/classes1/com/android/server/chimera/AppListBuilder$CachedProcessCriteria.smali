.class public Lcom/android/server/chimera/AppListBuilder$CachedProcessCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedProcessCriteria"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/AppListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/AppListBuilder;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder$CachedProcessCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 3

    .line 293
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-nez v0, :cond_e

    .line 294
    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder$CachedProcessCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 297
    :cond_e
    iget-object p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->hasCachedProcess()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method
