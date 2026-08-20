.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$3tzINC0GuyhfBlDVK5tHOSl3gvo(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
