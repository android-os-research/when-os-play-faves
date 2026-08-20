.class public Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field public final action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

.field public final args:Landroid/os/Bundle;

.field public final extra:I

.field public final flag:I

.field public final taskId:I


# direct methods
.method public constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    .line 117
    iput-object p2, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    .line 118
    iput-object p3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    .line 119
    iput p4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    .line 120
    iput p5, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/android/server/sepunion/friends/action/ActionDispatcher$Task-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;-><init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "Task"

    .line 126
    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    if-eqz v1, :cond_47

    const-string v1, "Task[%d] begins - action[0x%x]"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 127
    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    iget-object v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    iget v7, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-interface {v1, v3, v4, v7}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    const-string v1, "Task[%d] ends - action[0x%x]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget p0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p0

    .line 132
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    return-void
.end method
