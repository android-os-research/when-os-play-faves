.class public final synthetic Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxEnhancedController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/CustomLetterboxEnhancedController;

    invoke-virtual {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->onApplyLetterboxEnhanced()V

    return-void
.end method
