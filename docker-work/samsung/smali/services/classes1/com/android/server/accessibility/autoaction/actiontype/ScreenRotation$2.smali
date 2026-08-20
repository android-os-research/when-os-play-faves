.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;
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

    .line 96
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-static {p2}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->-$$Nest$fgetmAccelerometerRotationUri(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->-$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 101
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->-$$Nest$mrotateScreen(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    return-void
.end method
