.class public final synthetic Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TspStateController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TspStateController;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    iput p2, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TspStateController;

    iget v1, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/TspStateController;->$r8$lambda$Jd-5Ej8nRQZefzI6928fv1rEFWU(Lcom/android/server/wm/TspStateController;ILjava/lang/String;)V

    return-void
.end method
