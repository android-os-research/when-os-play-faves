.class public Lcom/android/server/accessibility/AccessibilityManagerService$6;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

.field public final synthetic val$userState:Lcom/android/server/accessibility/AccessibilityUserState;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 4

    .line 3005
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 3009
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$service:Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3010
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    invoke-virtual {p1, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 3014
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 3015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3017
    :try_start_23
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "touch_exploration_enabled"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    iget v3, v3, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {p1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_42

    .line 3021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$6;->val$userState:Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void

    :catchall_42
    move-exception p0

    .line 3021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3022
    throw p0
.end method
