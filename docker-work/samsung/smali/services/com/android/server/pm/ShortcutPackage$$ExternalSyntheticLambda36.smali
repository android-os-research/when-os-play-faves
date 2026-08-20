.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$1:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$1:Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$XvuWViDFCzNxEsdabvFKjGQRhcc(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V

    return-void
.end method
