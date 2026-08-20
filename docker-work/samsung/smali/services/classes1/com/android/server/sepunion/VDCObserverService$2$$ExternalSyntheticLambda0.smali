.class public final synthetic Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/VDCObserverService$2;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/VDCObserverService$2;

    iput-object p2, p0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/VDCObserverService$2;

    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/sepunion/VDCObserverService$2;->$r8$lambda$2zF736wgU2OiLxXU_iPImjXAZsM(Lcom/android/server/sepunion/VDCObserverService$2;Landroid/content/Intent;)V

    return-void
.end method
