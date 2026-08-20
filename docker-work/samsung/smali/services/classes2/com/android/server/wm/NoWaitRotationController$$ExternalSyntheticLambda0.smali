.class public final synthetic Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/NoWaitRotationController;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NoWaitRotationController;Lcom/android/server/wm/DisplayPolicy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NoWaitRotationController;

    iput-object p2, p0, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NoWaitRotationController;

    iget-object p0, p0, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/DisplayPolicy;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/NoWaitRotationController;->$r8$lambda$hMeATvcUfMRsFyv565ZocCF24-Q(Lcom/android/server/wm/NoWaitRotationController;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
