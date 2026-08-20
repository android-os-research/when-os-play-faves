.class Lcom/log/handler/LogHandler$1;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/log/handler/LogHandler;->executeMultiLogThreads(Ljava/util/Set;JLcom/log/handler/LogHandlerUtils$ILogExecute;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/log/handler/LogHandler;

.field final synthetic val$logExecute:Lcom/log/handler/LogHandlerUtils$ILogExecute;

.field final synthetic val$logType:Lcom/log/handler/LogHandlerUtils$LogType;


# direct methods
.method constructor <init>(Lcom/log/handler/LogHandler;Lcom/log/handler/LogHandlerUtils$ILogExecute;Lcom/log/handler/LogHandlerUtils$LogType;)V
    .registers 4
    .param p1, "this$0"    # Lcom/log/handler/LogHandler;

    .line 133
    iput-object p1, p0, Lcom/log/handler/LogHandler$1;->this$0:Lcom/log/handler/LogHandler;

    iput-object p2, p0, Lcom/log/handler/LogHandler$1;->val$logExecute:Lcom/log/handler/LogHandlerUtils$ILogExecute;

    iput-object p3, p0, Lcom/log/handler/LogHandler$1;->val$logType:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/log/handler/LogHandler$1;->val$logExecute:Lcom/log/handler/LogHandlerUtils$ILogExecute;

    iget-object v1, p0, Lcom/log/handler/LogHandler$1;->val$logType:Lcom/log/handler/LogHandlerUtils$LogType;

    invoke-interface {v0, v1}, Lcom/log/handler/LogHandlerUtils$ILogExecute;->execute(Lcom/log/handler/LogHandlerUtils$LogType;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/log/handler/LogHandler$1;->this$0:Lcom/log/handler/LogHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/log/handler/LogHandler;->-$$Nest$fputmIsExecuteSuccess(Lcom/log/handler/LogHandler;Z)V

    .line 139
    :cond_10
    return-void
.end method
