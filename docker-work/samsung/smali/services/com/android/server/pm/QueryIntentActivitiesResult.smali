.class public final Lcom/android/server/pm/QueryIntentActivitiesResult;
.super Ljava/lang/Object;
.source "QueryIntentActivitiesResult.java"


# instance fields
.field public addInstant:Z

.field public answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sortResult:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .line 35
    iput-boolean p1, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    .line 36
    iput-boolean p2, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    .line 37
    iput-object p3, p0, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    return-void
.end method
