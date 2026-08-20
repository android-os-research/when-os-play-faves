.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$AtBbabX5fpi88BBUX_VynVeJhKE(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method
