.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->$r8$lambda$Pu08oBWjCYgELXnKfILryngjKrs(Lcom/android/internal/infra/AndroidFuture;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
