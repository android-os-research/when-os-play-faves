.class public final synthetic Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    iput-wide p2, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$1:J

    iput-boolean p4, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    iget-wide v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$1:J

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->$r8$lambda$aW8KS0ujA4PBhSmLPF_sNelJTHQ(Lcom/android/server/wm/CustomLetterboxEnhancedController;JZ)V

    return-void
.end method
