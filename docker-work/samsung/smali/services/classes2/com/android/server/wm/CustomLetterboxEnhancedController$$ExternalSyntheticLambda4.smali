.class public final synthetic Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    iput-boolean p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->$r8$lambda$jzNmi6lxkUUtM3W5EX8Z7v1iFao(Lcom/android/server/wm/CustomLetterboxEnhancedController;ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
