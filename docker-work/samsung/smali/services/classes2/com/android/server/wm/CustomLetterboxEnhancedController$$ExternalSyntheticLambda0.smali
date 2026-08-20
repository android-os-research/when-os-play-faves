.class public final synthetic Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->$r8$lambda$gKBCpFXJe39EBJGpuI2e0jCajxE(Lcom/android/server/wm/CustomLetterboxEnhancedController;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
