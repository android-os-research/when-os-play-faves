.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowProcessController;

    iput-object p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowProcessController;

    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DexController;->$r8$lambda$Vty1SjKfvaWzdovGRUVZy9izDCE(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
