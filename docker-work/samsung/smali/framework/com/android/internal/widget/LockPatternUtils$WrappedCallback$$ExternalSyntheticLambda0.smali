.class public final synthetic Lcom/android/internal/widget/LockPatternUtils$WrappedCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$WrappedCallback;->lambda$onCredentialVerified$0$com-android-internal-widget-LockPatternUtils$WrappedCallback()V

    return-void
.end method
