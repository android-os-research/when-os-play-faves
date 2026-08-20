.class public final Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/KeyEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingKeyEvent"
.end annotation


# instance fields
.field public event:Landroid/view/KeyEvent;

.field public handled:Z

.field public policyFlags:I

.field public referenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>()V

    return-void
.end method
