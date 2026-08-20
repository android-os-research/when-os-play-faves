.class public final synthetic Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;->f$0:I

    iget-object p0, p0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/Helper;->$r8$lambda$XvYEIKfwZJoJC-jfH0ImpFZKUHI(ILjava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    return-void
.end method
