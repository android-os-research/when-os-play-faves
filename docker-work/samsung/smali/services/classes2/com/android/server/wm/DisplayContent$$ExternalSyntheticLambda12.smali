.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$FrA6WrZ6HsDDqxUnM7wrRZiL9RI(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
