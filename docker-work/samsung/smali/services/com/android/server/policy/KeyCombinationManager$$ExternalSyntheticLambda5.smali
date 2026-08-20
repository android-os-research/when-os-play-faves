.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$1:Landroid/view/KeyEvent;

    iput-boolean p3, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$1:Landroid/view/KeyEvent;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/KeyCombinationManager;->$r8$lambda$mg6Mo5wOx5q1gfrZzyQsjVg00Vs(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;Z)V

    return-void
.end method
