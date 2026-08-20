.class public Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;
.super Ljava/lang/Object;
.source "ClickAndHold.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->performCornerAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    invoke-static {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->-$$Nest$mclickAndHold(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V

    return-void
.end method
