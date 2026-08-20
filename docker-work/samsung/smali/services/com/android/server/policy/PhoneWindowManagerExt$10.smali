.class public Lcom/android/server/policy/PhoneWindowManagerExt$10;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;->registerDisplayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 4926
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .registers 8

    .line 4937
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManagerExt;ZZJI)I

    return-void
.end method

.method public onAppTransitionStartingLocked(ZZJJJ)I
    .registers 15

    .line 4931
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$10;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManagerExt;ZZJI)I

    move-result p0

    return p0
.end method
