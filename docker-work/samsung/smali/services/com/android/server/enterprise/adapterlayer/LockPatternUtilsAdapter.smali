.class public Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;
.super Ljava/lang/Object;
.source "LockPatternUtilsAdapter.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getActivePasswordQuality(I)I
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    return p0
.end method
