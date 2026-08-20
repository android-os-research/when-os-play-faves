.class public final synthetic Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->$r8$lambda$Rlm3pk_anhw2RML6vXC5_o3CZiM(Ljava/lang/String;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
