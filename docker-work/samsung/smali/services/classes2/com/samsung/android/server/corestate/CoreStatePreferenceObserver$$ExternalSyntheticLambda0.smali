.class public final synthetic Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;ILjava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    iput p2, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    iget v1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->$r8$lambda$vR56y0qISLSm5KBAIqeQB7cHO8c(Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;ILjava/lang/Runnable;)V

    return-void
.end method
