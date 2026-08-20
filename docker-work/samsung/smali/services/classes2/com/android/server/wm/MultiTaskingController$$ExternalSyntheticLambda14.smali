.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$1:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$LX9_xwEK8j3wRZLg7IET6GRmiYw(Lcom/android/server/wm/MultiTaskingController;Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
