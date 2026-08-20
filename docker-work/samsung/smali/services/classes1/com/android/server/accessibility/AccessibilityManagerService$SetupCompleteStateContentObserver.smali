.class public Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupCompleteStateContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 7076
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7077
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 7082
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7083
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 7084
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_20

    const/4 v2, 0x1

    :cond_20
    if-eqz v2, :cond_6e

    .line 7087
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmColorInversionStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7088
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDaltonizerEnabledStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7089
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDaltonizerStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7090
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSetupCompleteStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6e
    return-void
.end method
