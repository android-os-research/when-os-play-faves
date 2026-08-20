.class public final synthetic Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->$r8$lambda$dAGwsa_hFd4LsyuzVt1sg0f2a3I(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V

    return-void
.end method
