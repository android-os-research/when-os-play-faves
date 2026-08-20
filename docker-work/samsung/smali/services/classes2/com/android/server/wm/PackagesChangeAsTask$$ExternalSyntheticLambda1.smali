.class public final synthetic Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackagesChangeAsTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackagesChangeAsTask;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackagesChangeAsTask;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/PackagesChangeAsTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PackagesChangeAsTask;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/PackagesChangeAsTask;->$r8$lambda$7yqMSAmDuTHdh8groyP6S835rNg(Lcom/android/server/wm/PackagesChangeAsTask;Lcom/android/server/wm/Task;)V

    return-void
.end method
