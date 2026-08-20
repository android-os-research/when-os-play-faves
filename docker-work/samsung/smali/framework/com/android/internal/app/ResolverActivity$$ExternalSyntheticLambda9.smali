.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic blacklist f$1:Landroid/widget/TabWidget;

.field public final synthetic blacklist f$2:Landroid/widget/TabHost;

.field public final synthetic blacklist f$3:Lcom/android/internal/widget/ViewPager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TabWidget;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$2:Landroid/widget/TabHost;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$3:Lcom/android/internal/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final whitelist onTabChanged(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/TabWidget;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$2:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda9;->f$3:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/app/ResolverActivity;->lambda$setupProfileTabs$6$com-android-internal-app-ResolverActivity(Landroid/widget/TabWidget;Landroid/widget/TabHost;Lcom/android/internal/widget/ViewPager;Ljava/lang/String;)V

    return-void
.end method
