.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda31;->f$1:Lcom/android/server/accessibility/AccessibilityUserState;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$KgwNZ1LVaFhWj8dQm6GmwlaUShk(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
