.class public final synthetic Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    return-void
.end method


# virtual methods
.method public final whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;->lambda$createMenuDialog$5$com-android-internal-accessibility-dialog-AccessibilityShortcutChooserActivity(Landroid/content/DialogInterface;)V

    return-void
.end method
