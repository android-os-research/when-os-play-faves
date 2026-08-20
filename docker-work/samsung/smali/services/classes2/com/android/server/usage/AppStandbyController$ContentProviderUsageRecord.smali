.class public Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderUsageRecord"
.end annotation


# static fields
.field public static final sPool:Lcom/android/server/usage/AppStandbyController$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/AppStandbyController$Pool<",
            "Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 559
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Pool;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppStandbyController$Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    .registers 4

    .line 568
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    if-nez v0, :cond_f

    .line 570
    new-instance v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;-><init>()V

    .line 572
    :cond_f
    iput-object p0, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->name:Ljava/lang/String;

    .line 573
    iput-object p1, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->packageName:Ljava/lang/String;

    .line 574
    iput p2, v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->userId:I

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 2

    .line 579
    sget-object v0, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->sPool:Lcom/android/server/usage/AppStandbyController$Pool;

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppStandbyController$Pool;->recycle(Ljava/lang/Object;)V

    return-void
.end method
