.class public Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 1125
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onBadgingChanged(I)V
    .registers 2

    return-void
.end method

.method public onCreated(I)V
    .registers 2

    return-void
.end method

.method public onFinished(IZ)V
    .registers 6

    .line 1141
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 1142
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$sfgetLOCAL_LOGV()Z

    move-result v0

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_29

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionCallback.onFinished id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_29
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mgetRollbackForSession(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 1148
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v2

    if-eq p1, v2, :cond_3e

    goto :goto_9a

    :cond_3e
    if-eqz p2, :cond_54

    .line 1154
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result p1

    if-nez p1, :cond_9a

    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mcompleteEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 1158
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mmakeRollbackAvailable(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)V

    goto :goto_9a

    .line 1161
    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete rollback id="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for failed session id="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$fgetmRollbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1164
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->-$$Nest$mdeleteRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public onProgressChanged(IF)V
    .registers 3

    return-void
.end method
