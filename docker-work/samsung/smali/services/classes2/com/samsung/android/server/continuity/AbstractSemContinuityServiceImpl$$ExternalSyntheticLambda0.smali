.class public final synthetic Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    invoke-static {v0, p0}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->$r8$lambda$hTYu1opAaQIswESb7lvbmvtffL4(Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;Landroid/os/UserHandle;)V

    return-void
.end method
