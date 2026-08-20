.class public final synthetic Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;->f$1:Landroid/util/IndentingPrintWriter;

    check-cast p1, Landroid/util/ArraySet;

    invoke-static {v0, p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->$r8$lambda$47d82rZAMktfTtnlfKR9RwMguk8(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V

    return-void
.end method
