.class Landroid/widget/Editor$Blink;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private greylist-max-o mCancelled:Z

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2

    .line 3246
    iput-object p1, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$Blink-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method greylist-max-o cancel()V
    .registers 2

    .line 3266
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-nez v0, :cond_10

    .line 3267
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3268
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 3270
    :cond_10
    return-void
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 3250
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 3251
    return-void

    .line 3254
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3256
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mshouldBlink(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3257
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 3258
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 3261
    :cond_2b
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3263
    :cond_36
    return-void
.end method

.method greylist-max-o uncancel()V
    .registers 2

    .line 3273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 3274
    return-void
.end method
