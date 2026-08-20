.class public Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DaltonizerStateContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 7108
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7109
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 7114
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 7115
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method
