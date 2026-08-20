.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Z

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>([ZLjava/io/PrintWriter;Ljava/lang/String;[Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$0:[Z

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$0:[Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$3:[Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$xnJtlYGiZGfvSHyUhNWlXf8RU54([ZLjava/io/PrintWriter;Ljava/lang/String;[ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method
