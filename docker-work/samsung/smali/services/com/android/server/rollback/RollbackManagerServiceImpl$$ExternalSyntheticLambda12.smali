.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->$r8$lambda$-ChqgpPBypEF6mDei7vjqJT1qBs(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Context;)V

    return-void
.end method
