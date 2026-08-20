.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/WindowContainer;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowContainer;->$r8$lambda$0tyNKo-KnbBRmtCAePF1AoexeTg(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
