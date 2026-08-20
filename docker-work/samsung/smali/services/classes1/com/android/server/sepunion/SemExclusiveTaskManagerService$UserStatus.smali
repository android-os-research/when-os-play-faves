.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserStatus"
.end annotation


# instance fields
.field public mExclusiveTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/sepunion/SemExclusiveTaskManagerService$ExclusiveTask;",
            ">;"
        }
    .end annotation
.end field

.field public mIgnoreSettingsList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsA11yReset:Z

.field public mPreA11yServiceValue:Ljava/lang/String;

.field public mPreReduceAnimationValue:I

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    .line 147
    iput-boolean v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIsA11yReset:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mExclusiveTaskMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    return-void
.end method
