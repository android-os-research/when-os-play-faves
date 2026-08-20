.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/SystemServer;

    iget-boolean p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/SystemServer;->$r8$lambda$aO1yxyj8N2Uvxez_SSPRStpWZDY(Lcom/android/server/SystemServer;Z)V

    return-void
.end method
