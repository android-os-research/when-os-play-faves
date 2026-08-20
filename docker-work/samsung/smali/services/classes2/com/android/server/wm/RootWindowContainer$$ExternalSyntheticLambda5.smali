.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$4B2gdwd09G7T4W5Q7C1FjmAZHGI(Lcom/android/server/wm/RootWindowContainer;ILcom/android/server/wm/Task;)V

    return-void
.end method
