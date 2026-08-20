.class public Lcom/android/server/wm/FoldDisplayController$FoldStateCallback;
.super Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;
.source "FoldDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FoldDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FoldStateCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FoldDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FoldDisplayController;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lcom/android/server/wm/FoldDisplayController$FoldStateCallback;->this$0:Lcom/android/server/wm/FoldDisplayController;

    invoke-direct {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;-><init>(Lcom/android/server/wm/FlexibleDisplayController;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 2

    .line 311
    invoke-super {p0, p1}, Lcom/android/server/wm/FlexibleDisplayController$FlexibleStateCallback;->onStateChanged(I)V

    return-void
.end method
