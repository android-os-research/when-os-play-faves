.class public Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIPBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 745
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 748
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponseAxT9Info"

    .line 749
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 751
    :try_start_c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SIPBroadcastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "AxT9IME.isVisibleWindow"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmIsSIPshown(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-void
.end method
