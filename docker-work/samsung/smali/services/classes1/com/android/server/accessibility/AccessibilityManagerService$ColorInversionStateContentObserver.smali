.class public Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorInversionStateContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 7048
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7049
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    .line 7054
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7055
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 7056
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 7057
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    move v1, v4

    .line 7059
    :goto_2b
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_41

    move v3, v2

    goto :goto_42

    :cond_41
    move v3, v4

    .line 7062
    :goto_42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v5, "aod_show_state"

    invoke-static {p0, v5, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_57

    goto :goto_58

    :cond_57
    move v2, v4

    :goto_58
    if-eqz v2, :cond_5d

    if-eqz v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move v4, v3

    :goto_5e
    if-nez v1, :cond_6d

    const/16 p0, 0x12c

    if-eqz v4, :cond_69

    .line 7070
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetMATRIX_INVERT_COLOR()[F

    move-result-object p1

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    .line 7069
    :goto_6a
    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_6d
    return-void
.end method
