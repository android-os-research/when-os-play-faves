.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IActivityManager;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/IActivityManager;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Landroid/app/IActivityManager;

    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$0:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/BroadcastHelper;->$r8$lambda$19b-IeogupQNP2Th8BJz1BXsn5A(Landroid/app/IActivityManager;Landroid/content/Intent;I)V

    return-void
.end method
