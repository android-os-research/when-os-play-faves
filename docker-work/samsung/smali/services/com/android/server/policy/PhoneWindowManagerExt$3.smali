.class public Lcom/android/server/policy/PhoneWindowManagerExt$3;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;II)V
    .registers 4

    .line 2649
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 2663
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->checkAccessibilityShortcutVolupPowerTriggered()V

    return-void
.end method

.method public execute()V
    .registers 1

    .line 2659
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$3;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptAccessibilityShortcutVolupPowerChord()V

    return-void
.end method

.method public preCondition()Z
    .registers 1

    .line 2655
    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result p0

    return p0
.end method
