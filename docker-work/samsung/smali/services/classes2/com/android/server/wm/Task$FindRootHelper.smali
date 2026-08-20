.class public Lcom/android/server/wm/Task$FindRootHelper;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FindRootHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public mIgnoreRelinquishIdentity:Z

.field public mRoot:Lcom/android/server/wm/ActivityRecord;

.field public mSetToBottomIfNone:Z

.field public final synthetic this$0:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 729
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$FindRootHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;)V

    return-void
.end method


# virtual methods
.method public findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 735
    iput-boolean p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    .line 736
    iput-boolean p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    .line 737
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 738
    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 p2, 0x0

    .line 739
    iput-object p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    if-eqz v0, :cond_a

    .line 748
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 751
    :cond_a
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 753
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1a

    .line 755
    :cond_18
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    .line 758
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->effectiveUid:I

    goto :goto_29

    :cond_23
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 759
    :goto_29
    iget-boolean v3, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    if-nez v3, :cond_51

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_51

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_4e

    .line 762
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v2, :cond_4e

    goto :goto_51

    .line 769
    :cond_4e
    iput-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return v1

    :cond_51
    :goto_51
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 729
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task$FindRootHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
