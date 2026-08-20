.class public Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AODStateContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 7016
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7017
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    .line 7022
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7023
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 7024
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 7026
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 7027
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v1

    :goto_2e
    if-eqz v2, :cond_8d

    .line 7030
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 7031
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v4, "aod_show_state"

    invoke-static {p0, v4, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_4d

    move v1, v3

    :cond_4d
    if-eqz v0, :cond_54

    .line 7034
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result p0

    goto :goto_55

    :cond_54
    move p0, v3

    .line 7035
    :goto_55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange aodShowStateEnabled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " displayState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12c

    if-nez v1, :cond_89

    const/4 v0, 0x3

    if-eq p0, v0, :cond_89

    const/4 v0, 0x4

    if-eq p0, v0, :cond_89

    if-ne p0, v3, :cond_81

    goto :goto_89

    .line 7040
    :cond_81
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetMATRIX_INVERT_COLOR()[F

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_8d

    :cond_89
    :goto_89
    const/4 p0, 0x0

    .line 7038
    invoke-virtual {v2, p1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_8d
    :goto_8d
    return-void
.end method
