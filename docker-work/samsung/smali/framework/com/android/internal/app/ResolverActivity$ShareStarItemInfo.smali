.class Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShareStarItemInfo"
.end annotation


# instance fields
.field public blacklist mActivityName:Ljava/lang/String;

.field public blacklist mAppLabel:Ljava/lang/String;

.field public blacklist mIconUri:Ljava/lang/String;

.field public blacklist mItemLabel:Ljava/lang/String;

.field public blacklist mPackageName:Ljava/lang/String;

.field public blacklist mScore:D


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "appLabel"    # Ljava/lang/String;
    .param p4, "itemLabel"    # Ljava/lang/String;
    .param p5, "iconUri"    # Ljava/lang/String;
    .param p6, "score"    # D

    .line 3295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3296
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mPackageName:Ljava/lang/String;

    .line 3297
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mActivityName:Ljava/lang/String;

    .line 3298
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mAppLabel:Ljava/lang/String;

    .line 3299
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mItemLabel:Ljava/lang/String;

    .line 3300
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mIconUri:Ljava/lang/String;

    .line 3301
    iput-wide p6, p0, Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;->mScore:D

    .line 3302
    return-void
.end method
