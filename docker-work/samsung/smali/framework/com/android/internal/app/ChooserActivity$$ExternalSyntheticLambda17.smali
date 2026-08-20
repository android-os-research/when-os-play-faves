.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda17;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda17;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda17;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda17;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->lambda$requestEnhancementDetection$11$com-android-internal-app-ChooserActivity(I)V

    return-void
.end method
