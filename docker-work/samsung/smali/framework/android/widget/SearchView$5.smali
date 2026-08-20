.class Landroid/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SearchView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/SearchView;

    .line 1247
    iput-object p1, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 1250
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 1251
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monSearchClicked(Landroid/widget/SearchView;)V

    goto :goto_45

    .line 1252
    :cond_e
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmCloseButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    .line 1253
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monCloseClicked(Landroid/widget/SearchView;)V

    goto :goto_45

    .line 1254
    :cond_1c
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmGoButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    .line 1255
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monSubmitQuery(Landroid/widget/SearchView;)V

    goto :goto_45

    .line 1256
    :cond_2a
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmVoiceButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_38

    .line 1257
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$monVoiceClicked(Landroid/widget/SearchView;)V

    goto :goto_45

    .line 1258
    :cond_38
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_45

    .line 1259
    iget-object v0, p0, Landroid/widget/SearchView$5;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-$$Nest$mforceSuggestionQuery(Landroid/widget/SearchView;)V

    .line 1261
    :cond_45
    :goto_45
    return-void
.end method
