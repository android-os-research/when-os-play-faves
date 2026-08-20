.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/WindowProcessController;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DexController;

    iput-object p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowProcessController;

    iput p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/WindowProcessController;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/DexController;->$r8$lambda$wh60R6RwGFzKbzn4C6c-Rnt__xs(Lcom/android/server/wm/DexController;Lcom/android/server/wm/WindowProcessController;I)V

    return-void
.end method
