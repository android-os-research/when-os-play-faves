.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/am/UserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    iput-boolean p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/am/UserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    iget-boolean v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Z

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/am/UserState;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/UserController;->$r8$lambda$RjWyT2zMOcyhCC-bNwnsM1AeZWE(Lcom/android/server/am/UserController;ZLcom/android/server/am/UserState;)V

    return-void
.end method
