.class Lcom/android/internal/app/ResolverActivity$3;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$OnProfileSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->setupProfileTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$tabHost:Landroid/widget/TabHost;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabHost;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 2206
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$3;->val$tabHost:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onProfilePageStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .line 2216
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->onHorizontalSwipeStateChanged(I)V

    .line 2217
    return-void
.end method

.method public blacklist onProfileSelected(I)V
    .registers 3
    .param p1, "index"    # I

    .line 2209
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->val$tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2210
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->resetButtonBar()V

    .line 2211
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$3;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$mresetCheckedItem(Lcom/android/internal/app/ResolverActivity;)V

    .line 2212
    return-void
.end method
