.class public final synthetic Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxUiController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxUiController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/LetterboxUiController;->$r8$lambda$o-T1m10xVi0lfFW6RENWRl7EIOo(Lcom/android/server/wm/LetterboxUiController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
