.class public final synthetic Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/audio/MultiFocusStack$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    invoke-static {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->$r8$lambda$9RAXDHiaEGyGO4KEf3pqqzPDgks(ILcom/android/server/audio/FocusRequester;)Z

    move-result p0

    return p0
.end method
