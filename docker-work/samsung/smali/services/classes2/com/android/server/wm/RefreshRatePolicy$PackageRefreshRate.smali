.class public Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RefreshRatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageRefreshRate"
.end annotation


# instance fields
.field public final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/RefreshRatePolicy;


# direct methods
.method public static synthetic $r8$lambda$dAGwsa_hFd4LsyuzVt1sg0f2a3I(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RefreshRatePolicy;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;FF)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-static {v0}, Lcom/android/server/wm/RefreshRatePolicy;->-$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F

    move-result v0

    .line 52
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->this$0:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-static {v0}, Lcom/android/server/wm/RefreshRatePolicy;->-$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F

    move-result v0

    .line 54
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0, p2, p3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 70
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNonHighRefreshRatePackages:"

    .line 71
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
