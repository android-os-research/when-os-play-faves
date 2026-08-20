.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$0:I

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda18;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$tg4XKEu3_Seye1W_CyQqjlaY6WU(ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method
