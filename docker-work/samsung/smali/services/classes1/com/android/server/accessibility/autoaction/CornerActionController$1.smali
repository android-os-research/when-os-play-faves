.class public Lcom/android/server/accessibility/autoaction/CornerActionController$1;
.super Landroid/database/ContentObserver;
.source "CornerActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoaction/CornerActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V
    .registers 3

    .line 90
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionController;->-$$Nest$msetCornerAction(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    return-void
.end method
