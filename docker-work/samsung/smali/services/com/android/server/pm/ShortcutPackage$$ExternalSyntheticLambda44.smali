.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;->f$1:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda44;->f$1:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, p0}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$QF7x7rXba-FIGSb2qUnY0-MDqiw(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
