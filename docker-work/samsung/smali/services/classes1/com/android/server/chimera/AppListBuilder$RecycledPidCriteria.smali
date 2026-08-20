.class public Lcom/android/server/chimera/AppListBuilder$RecycledPidCriteria;
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
    name = "RecycledPidCriteria"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/AppListBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/AppListBuilder;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 6

    .line 277
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 278
    iget-object v2, p0, Lcom/android/server/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    iget-object v2, v2, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v2, v3}, Lcom/android/server/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 279
    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder$RecycledPidCriteria;->this$0:Lcom/android/server/chimera/AppListBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppListBuilder"

    invoke-interface {p0, v0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_47

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return p0
.end method
