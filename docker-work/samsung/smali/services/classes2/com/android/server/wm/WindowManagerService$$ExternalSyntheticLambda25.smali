.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda25;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda25;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$nxz5c6J61ZY05hsu_LfA8KpLMK8(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowContainer;Ljava/lang/Runnable;)V

    return-void
.end method
