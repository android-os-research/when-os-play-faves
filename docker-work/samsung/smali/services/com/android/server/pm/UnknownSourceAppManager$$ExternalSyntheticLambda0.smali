.class public final synthetic Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UnknownSourceAppManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UnknownSourceAppManager;Ljava/util/List;Ljava/util/function/Function;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UnknownSourceAppManager;

    iput-object p2, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UnknownSourceAppManager;

    iget-object v1, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Function;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/UnknownSourceAppManager;->$r8$lambda$vXaAwnugERuFWznErBWGoRegjic(Lcom/android/server/pm/UnknownSourceAppManager;Ljava/util/List;Ljava/util/function/Function;)V

    return-void
.end method
