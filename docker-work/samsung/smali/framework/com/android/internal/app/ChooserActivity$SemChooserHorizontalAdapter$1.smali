.class Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    .line 11474
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;->val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .registers 2

    .line 11477
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 11478
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->notifyDataSetChanged()V

    .line 11479
    return-void
.end method

.method public whitelist onInvalidated()V
    .registers 2

    .line 11483
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 11484
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter$1;->this$1:Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->notifyDataSetChanged()V

    .line 11485
    return-void
.end method
