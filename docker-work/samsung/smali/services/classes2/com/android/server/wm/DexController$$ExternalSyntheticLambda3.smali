.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DexController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DexController;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/DexController;->$r8$lambda$bHt9CGvobWzRnlJY6u1p-OGInbk(Lcom/android/server/wm/DexController;Lcom/android/server/wm/Task;)V

    return-void
.end method
