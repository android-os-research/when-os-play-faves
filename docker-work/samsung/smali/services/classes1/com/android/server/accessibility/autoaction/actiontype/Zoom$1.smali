.class public Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->performCornerAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

.field public final synthetic val$displayId:I

.field public final synthetic val$ratio:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V
    .registers 6

    .line 101
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    iput p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    iput p4, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    iput p5, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    iget v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    iget v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    int-to-float v3, v3

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->zoom(IIFI)V

    return-void
.end method
