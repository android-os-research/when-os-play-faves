.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda18;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->$r8$lambda$WrHQ8xJh3ck-dToYavNRaEKaWM8(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    return-void
.end method
