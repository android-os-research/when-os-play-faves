.class public Lcom/android/server/wm/FreeformController$1;
.super Ljava/lang/Object;
.source "FreeformController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FreeformController;->showOverHeatingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$1;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 620
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_5
    return-void
.end method
