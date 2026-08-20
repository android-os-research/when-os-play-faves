.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$sap1TNxioM-9a8mmmcfnAH1WolY(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Set;Ljava/util/function/Consumer;)V

    return-void
.end method
