.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;
.super Ljava/lang/Object;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitMessageObj"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

.field final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 460
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->this$1:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->packageName:Ljava/lang/String;

    .line 462
    iput-object p3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler$InitMessageObj;->version:Ljava/lang/String;

    .line 463
    return-void
.end method
