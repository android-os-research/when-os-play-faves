.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentTasks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/RecentTasks;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTasks;->$r8$lambda$cCKudQPgUK5A-K9FiJzpeOUMYjQ(Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/Task;)V

    return-void
.end method
