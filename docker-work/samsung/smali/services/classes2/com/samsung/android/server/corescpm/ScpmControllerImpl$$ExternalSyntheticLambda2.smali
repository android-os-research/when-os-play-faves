.class public final synthetic Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->$r8$lambda$HK1PX0TUGksSTLqcl2N-vvVeqnY(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;)V

    return-void
.end method
