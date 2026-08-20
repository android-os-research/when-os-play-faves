.class Lcom/android/internal/app/ChooserActivity$21;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semExecuteAsyncTaskForBindSlice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 10060
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$21;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 10063
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$21;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallSliceDataFromProvider(Lcom/android/internal/app/ChooserActivity;)V

    .line 10065
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$21;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 10066
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$21;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 10068
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$21;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserHandler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 10070
    return-void
.end method
