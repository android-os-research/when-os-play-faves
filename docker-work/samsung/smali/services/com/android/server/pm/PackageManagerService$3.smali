.class public Lcom/android/server/pm/PackageManagerService$3;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 4758
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$3;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10

    .line 4761
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->val$resolver:Landroid/content/ContentResolver;

    const-string v0, "enable_ephemeral_feature"

    const/4 v1, 0x1

    .line 4762
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    move p1, v0

    .line 4763
    :goto_f
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_19
    if-ge v4, v3, :cond_3a

    aget v5, v2, v4

    if-nez p1, :cond_2d

    .line 4764
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$3;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "instant_apps_enabled"

    .line 4765
    invoke-static {v6, v7, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_2d

    :cond_2b
    move v6, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v6, v1

    .line 4767
    :goto_2e
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$fgetmWebInstantAppsDisabled(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/utils/WatchedSparseBooleanArray;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_3a
    return-void
.end method
