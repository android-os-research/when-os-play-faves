.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;
.super Ljava/lang/Object;
.source "ScreenRotation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
