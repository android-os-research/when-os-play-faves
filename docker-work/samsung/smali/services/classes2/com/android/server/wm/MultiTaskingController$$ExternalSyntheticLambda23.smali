.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda23;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda23;->f$0:[I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$RC1nH2qUd1p7zMEkak2QJNga8Ng([ILcom/android/server/wm/Task;)V

    return-void
.end method
