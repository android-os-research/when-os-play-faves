.class public Lcom/android/server/policy/PhoneWindowManagerExt$4;
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

    .line 2671
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$4;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 2682
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$4;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->cancelPendingLockTaskModePinnedChordAction()V

    return-void
.end method

.method public execute()V
    .registers 1

    .line 2678
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$4;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->interceptStopLockTaskModePinnedChord()V

    return-void
.end method

.method public preCondition()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
